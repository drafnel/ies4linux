# IEs 4 Linux Graphic User Interface
# Needs python and pygtk

import pygtk
pygtk.require('2.0')
import gtk, gobject, pango, sys, os

class GTKgui:
		
	def __init__(self):
		gtk.gdk.threads_init()
		self.remove_next_line = False
		
	def create_window(self, title, logo):
		self.title = title
		self.logoFile = logo
		
		self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
		self.window.connect("destroy", gtk.main_quit)
		self.window.set_position(gtk.WIN_POS_CENTER)
		self.window.set_title(self.title)
		self.window.set_border_width(10)

		self.mainBox = gtk.VBox()
		self.window.add(self.mainBox)
		
		try:
			self.logoImg = gtk.gdk.pixbuf_new_from_file(self.logoFile)
			
			# Create top logo
			logo = gtk.Image()
			logo.set_from_pixbuf(self.logoImg.scale_simple(100,100,gtk.gdk.INTERP_BILINEAR))
			logo.set_size_request(100, 100);
			self.mainBox.pack_start(logo)
			
			# Create window logo
			self.window.set_icon(self.logoImg.scale_simple(15,15,gtk.gdk.INTERP_BILINEAR))
		except gobject.GError:
			print "DEBUG: Could not load image file"
		
		# Create top notebook
		self.notebook = gtk.Notebook()
		self.mainBox.pack_start(self.notebook)
		self.buttonBox = gtk.HBox()
		self.mainBox.pack_end(self.buttonBox, False, False)
		
	def create_install_tab(self, title):
		# Create notebook pages
		self.optionsVbox = gtk.VBox()
		self.notebook.append_page(self.optionsVbox, gtk.Label(title))
		self.installationOptions = []
		self.installContainer = self.optionsVbox
		
	def create_advanced_tab(self, title):
		self.advancedTable = gtk.Table()
		self.notebook.append_page(self.advancedTable, gtk.Label(title))
		self.advancedOptions = []
		
	def add_ok_button(self, title, callback=None):
		okButton = gtk.Button(stock=gtk.STOCK_OK)
		self.buttonBox.pack_start(okButton)
		okButton.connect("clicked", self.callback_ok_button, callback)
		okButton.set_flags(gtk.CAN_DEFAULT)
		okButton.grab_default()
		
	def add_cancel_button(self, title, callback=None):
		quitButton = gtk.Button(stock=gtk.STOCK_CANCEL)
		self.buttonBox.pack_end(quitButton)
		quitButton.connect_object("clicked", self.callback_cancel_button, callback)
		
	def new_install_option_frame(self, msg):
		frame = gtk.Frame(msg)
		frame.set_border_width(5)
		self.optionsVbox.pack_start(frame)
		
		vbox = gtk.VBox()
		frame.add(vbox)
		
		self.installContainer = vbox
		
	def add_separator(self):
		separator = gtk.HSeparator()
		self.installContainer.pack_start(separator, False, True, 8)
		
	def add_install_option(self, msg, variable, toggled, changeable=True):
		container = self.installContainer
		
		checkButton = gtk.CheckButton(msg, container)
		checkButton.set_active(toggled)
		checkButton.defaultValue = toggled
		
		# Don't let user change state if he can't
		if not changeable:
			checkButton.connect('toggled', lambda w: w.set_active(toggled))

		checkButton.env_variable = variable

		container.pack_start(checkButton, True, True, 0)
		self.installationOptions.append(checkButton)
		
	def add_language_select(self, title, locales, default, variable):
		container = self.installContainer
		
		locales = locales.split(' ')
		locales.sort()
		label = gtk.Label(title + ': ')
		
		combo = gtk.combo_box_new_text()
		i = 0
		for locale in locales:
			combo.append_text(locale)
			if locale == default:
				combo.set_active(i)
			i = i+1
				
		box = gtk.HBox()
		box.pack_start(label, False, False, 0)
		box.pack_start(combo, False, False, 0)
		
		container.pack_start(box)
		self.locales = combo
		self.locales.env_variable = variable
		
	def add_advanced_option(self, msg, variable, default):
		self.advancedTable.resize(len(self.advancedOptions) + 1, 2)
		
		label = gtk.Label(msg)
		entry = gtk.Entry()
		entry.set_text(default)

		i = len(self.advancedOptions)
		self.advancedTable.attach(label, 0, 1, i, i+1)
		self.advancedTable.attach(entry, 1, 2, i, i+1)

		entry.env_variable = variable
		self.advancedOptions.append(entry)

	def show(self):
		self.window.show_all()
		gtk.gdk.threads_enter()
		gtk.main()
		gtk.gdk.threads_leave()
		
	def get_selected_locale(self):
		combobox = self.locales
		model = combobox.get_model()
		active = combobox.get_active()
		if active < 0:
			return None
		return model[active][0]
	
	def callback_ok_button(self, widget, function=None):
		if function != None: function()
		
	def create_installation_window(self):
		# Hide installation window
		self.window.hide()
		
		# Make Console Window
		self.window.resize(500,500)
		sw = gtk.ScrolledWindow()
		sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
		self.textview = gtk.TextView()
		self.textview.set_editable(False)
		self.textbuffer = self.textview.get_buffer()
		sw.add(self.textview)
		
		# Tags
		self.normal_tag = self.textbuffer.create_tag(font="Monospace")
	
		self.section_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD)
		self.ok_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD, foreground='Blue')
		self.error_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD, foreground='Red')
		
		# Box elements
		self.loggerVbox = gtk.VBox()
		self.loggerVbox.pack_start(sw)
		
		# Set box on window
		self.window.remove(self.window.get_children()[0])
		self.window.add(self.loggerVbox)
		self.window.show_all()
		
	def add_abort_installation_button(self, title, callback):
		# Cancel/Close Button
		button = gtk.Button(stock=gtk.STOCK_CANCEL)
		button.connect("clicked", self.callback_abort_installation, callback)
		self.loggerVbox.pack_start(button, False, False)
		button.show()
		
	def update_environment(self):
		for option in self.installationOptions:
			if option.get_active() == True:
				os.putenv(option.env_variable, '1')
			else:
				os.putenv(option.env_variable, '0')
				
		for option in self.advancedOptions:
			os.putenv(option.env_variable, option.get_text())
		
		os.putenv(self.locales.env_variable, self.get_selected_locale())
		
	def installation_insert_text(self, line):
		# What tag to use
		tag = self.normal_tag
		if line[0:2] == '# ':
			tag = self.section_tag
			line = line[2:]
		elif line == "[ OK ]\n":
			tag = self.ok_tag
		elif line[0:3] == '!! ':
			tag = self.error_tag
			line = line[2:]
				
		# Delete last line if it is \r
		if self.remove_next_line and line != '\n':
			it = self.textbuffer.get_iter_at_line(self.textbuffer.get_line_count()-2)
			self.textbuffer.delete(it, self.textbuffer.get_end_iter())
			self.remove_next_line = False

		# Insert text and relocate scroll
		self.textbuffer.insert_with_tags(self.textbuffer.get_end_iter(), line, tag)
		self.textview.scroll_to_iter(self.textbuffer.get_end_iter(), 0)
		
		if line[-1] == '\r': self.remove_next_line = True
		
	def add_close_button(self):
		# Installation finshed correctly
		button = self.loggerVbox.get_children()[-1]
		button.set_use_stock(True)
		button.set_label(gtk.STOCK_CLOSE)
	
	def callback_cancel_button(self, widget, function=None):
		if function != None: function()
		gtk.main_quit()

	def callback_abort_installation(self, widget, function=None):
		if function != None: function()
		gtk.main_quit()
		
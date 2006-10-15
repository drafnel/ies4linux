# IEs 4 Linux Graphic User Interface
# Needs python and pygtk

import pygtk
pygtk.require('2.0')
import gtk, gobject, os, sys
from threading import Thread

class GTKgui:
	
	def __init__(self):
		self.title = os.getenv("GUI_TITLE")
		self.logoFile = "lib/ies4linux.svg"
		
	def init(self):
		gtk.threads_init()
		
		# Create Window
		self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
		self.window.connect("destroy", gtk.main_quit)
		self.window.set_position(gtk.WIN_POS_CENTER)
		self.window.set_title(self.title)
		self.window.set_border_width(10)
		
		# Create main VBox
		mainBox = gtk.VBox()
		self.window.add(mainBox)
		
		try:
			self.logoImg = gtk.gdk.pixbuf_new_from_file(self.logoFile)
			
			# Create top logo
			logo = gtk.Image()
			logo.set_from_pixbuf(self.logoImg.scale_simple(100,100,gtk.gdk.INTERP_BILINEAR))
			logo.set_size_request(100, 100);
			mainBox.pack_start(logo)
			
			# Create window logo
			self.window.set_icon(self.logoImg.scale_simple(15,15,gtk.gdk.INTERP_BILINEAR))
		except gobject.GError:
			print "DEBUG: Could not load image file"
		
		# Create top notebook
		notebook = gtk.Notebook()
		mainBox.pack_start(notebook)
		
		# Create buttons area
		buttonBox = gtk.HBox()
		mainBox.pack_end(buttonBox, False, False)
		
		# Create notebook pages
		self.optionsVbox = gtk.VBox()
		notebook.append_page(self.optionsVbox, gtk.Label(os.getenv('GUI_INSTALLATION_OPTIONS')))
		
		self.advancedTable = gtk.Table()
		notebook.append_page(self.advancedTable, gtk.Label(os.getenv('GUI_ADVANCED_OPTIONS')))
		
		# Create buttons
		okButton = gtk.Button(stock=gtk.STOCK_OK)
		buttonBox.pack_start(okButton)
		okButton.connect("clicked", self.okAction)
		okButton.set_flags(gtk.CAN_DEFAULT)
		okButton.grab_default()
		
		quitButton = gtk.Button(stock=gtk.STOCK_CANCEL)
		buttonBox.pack_end(quitButton)
		quitButton.connect_object("clicked", gtk.main_quit, self.window,None)
		
		# Create options
		self.installationOptions = []
		self.advancedOptions = []
		self.installContainer = self.optionsVbox

	def newInstallOptionFrame(self, msg):
		frame = gtk.Frame(os.getenv(msg))
		frame.set_border_width(5)
		self.optionsVbox.pack_start(frame)
		
		vbox = gtk.VBox()
		frame.add(vbox)
		
		self.installContainer = vbox
		
	def addSeparator(self):
		separator = gtk.HSeparator()
		self.installContainer.pack_start(separator, False, True, 8)
		
	def addInstallOption(self, msg, checkedOption, uncheckedOption, toggled):
		container = self.installContainer
		
		checkButton = gtk.CheckButton(os.getenv(msg), container)
		checkButton.set_active(toggled)
		
		# Don't let user change state if he can't
		if uncheckedOption == '':
			checkButton.connect('toggled', lambda w: w.set_active(True))
		if checkedOption == '': 
			checkButton.connect('toggled', lambda w: w.set_active(False))

		checkButton.checked_option = checkedOption
		checkButton.unchecked_option = uncheckedOption

		container.pack_start(checkButton, True, True, 0)
		self.installationOptions.append(checkButton)
		
	def addLanguageSelect(self):
		container = self.installContainer
		
		locales = os.getenv("IE6_LOCALES").split(' ')
		locales.sort()
		label = gtk.Label(os.getenv("GUI_LOCALE") + ': ')
		
		user_locale = os.getenv("IE6_LOCALE")
		combo = gtk.combo_box_new_text()
		i = 0
		for locale in locales:
			combo.append_text(locale)
			if locale == user_locale:
				combo.set_active(i)
			i = i+1
				
		box = gtk.HBox()
		box.pack_start(label, False, False, 0)
		box.pack_start(combo, False, False, 0)
		
		container.pack_start(box)
		self.locales = combo
		
	def addAdvancedOption(self, msg, option, default):
		self.advancedTable.resize(len(self.advancedOptions) + 1, 2)
		
		label = gtk.Label(os.getenv(msg))
		entry = gtk.Entry()

		if default[0] == '~':
			entry.set_text(os.getenv('HOME') + default[1:])
		else:
			entry.set_text(default)

		i = len(self.advancedOptions)
		self.advancedTable.attach(label, 0, 1, i, i+1)
		self.advancedTable.attach(entry, 1, 2, i, i+1)

		entry.option = option
		self.advancedOptions.append(entry)

	def show(self):
		self.window.show_all()
		gtk.threads_enter()
		gtk.main()
		gtk.threads_leave()

	def okAction(self, widget, data=None):
		self.window.hide()
		t = ExecuteThread(self.installationOptions, self.advancedOptions, self.getSelectedLocale())
		t.start()
		gtk.main_quit()
		
	def getSelectedLocale(self):
		combobox = self.locales
		model = combobox.get_model()
		active = combobox.get_active()
		if active < 0:
			return None
		return model[active][0]
		
class ExecuteThread(Thread):
	
	def __init__(self, i, a, l):
		Thread.__init__(self)
		self.installationOptions = i
		self.advancedOptions = a
		self.locale = l
	
	def run(self):
		command = os.getenv('IES4LINUX') + "/ies4linux "
		
		for option in self.installationOptions:
			if option.get_active():
				command += " " + option.checked_option
			else:
				command += " " + option.unchecked_option
				
		for option in self.advancedOptions:
			command += " " + option.option + ' "' + option.get_text() + '"'
		
		command += " --locale " + self.locale + " "
		
		os.system(command)
		
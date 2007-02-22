# IEs 4 Linux Graphic User Interface
# Needs python and pygtk

import pygtk
pygtk.require('2.0')
import gtk, gobject, pango, sys, os
import sys, os, threading
from subprocess import *

# Basic class for windows
class BasicWindow:
	
	def __init__(self):
		self.window = create_window(env("GUI_TITLE"))
		self.current_container = self.window.main_vbox
		
	def add_icon(self):
		if logoImg != None:
			logo = gtk.Image()
			logo.set_from_pixbuf(logoImg.scale_simple(100,100,gtk.gdk.INTERP_BILINEAR))
			logo.set_size_request(100, 100)
			self.add_widget(logo)
		else:
			label = gtk.Label()
			label.set_justify(gtk.JUSTIFY_CENTER)
			label.set_markup('<span size="xx-large" foreground="#0242c2">IEs 4 Linux</span>')
			label.set_alignment(0, 0)
			label.set_line_wrap(True)
			label.set_size_request(270, -1)
			self.add_widget(label, 0)
	
	def add_widget(self, widget, space=5):
		self.current_container.pack_start(widget, False, False, space)
		
	def add_info(self, text, title=None,size=270):
		label = gtk.Label(text)
		label.set_justify(gtk.JUSTIFY_LEFT)
		label.set_alignment(0, 0)
		label.set_line_wrap(True)
		label.set_size_request(size, -1)
		#frame = gtk.Frame(title)
		#frame.add(label)
		self.add_widget(label, 0)
		
	def add_title(self, title):
		label = gtk.Label("<b>"+title+"</b>")
		label.set_use_markup(True)
		self.add_widget(label, 5)
		
	def add_separator(self):
		separator = gtk.HSeparator()
		self.current_container.pack_start(separator, False, False, 5)
		
	def show(self):
		self.window.show_all()

# Shows IEs4Linux main window
class MainWindow(BasicWindow):
	
	def __init__(self):
		BasicWindow.__init__(self)
		self.add_icon()
		
		ies = CheckboxesSection(env("GUI_IES"), 'h')
		ies.add_option("6.0", "INSTALLIE6")
		ies.add_option("5.5", "INSTALLIE55")
		ies.add_option("5.0", "INSTALLIE5")
		#ies.add_option("2.0", "INSTALLIE2")
		#ies.add_option("1.5", "INSTALLIE15")
		#ies.add_option("1.0", "INSTALLIE1")
		#ies.add_option("(7.0)", "INSTALLIE7")
		ies.add_widget(self.create_locale_selector())
		self.add_widget(ies.widget)
		
		plugins = CheckboxesSection(env("GUI_PLUGINS"), 'v')
		plugins.add_option("Adobe Flash 9", "INSTALLFLASH")
		self.add_widget(plugins.widget)
		
		icons = CheckboxesSection(env("GUI_ICONS"), 'h')
		icons.add_option(env("GUI_DESKTOP"), "CREATE_DESKTOP_ICON")
		icons.add_option(env("GUI_MENU"), "CREATE_MENU_ICON")
		self.add_widget(icons.widget)
		
		buttons = self.create_buttons(env("GUI_OK"), env("GUI_CANCEL"), env("GUI_ADVANCED"))
		self.add_widget(buttons)
		
		self.advanced_window = AdvancedWindow(self.window)
		
	def create_locale_selector(self):
		locales = env("IE6_LOCALES").split(' ')
		locales.sort()
		label = gtk.Label(env("GUI_LOCALE") + ': ')
		
		combo = gtk.combo_box_new_text()
		default = env("IE6_LOCALE")
		i = 0
		for locale in locales:
			combo.append_text(locale)
			if locale == default:
				combo.set_active(i)
			i = i+1
				
		box = gtk.HBox()
		box.pack_start(label, False, False, 0)
		box.pack_start(combo, False, False, 0)
		self.locales = combo
		
		return box
	
	def get_selected_locale(self):
		combobox = self.locales
		model = combobox.get_model()
		active = combobox.get_active()
		if active < 0:
			return None
		return model[active][0]
	
	def create_buttons(self, ok_label, quit_label, advanced_label):
		box = gtk.HBox()
		
		ok = gtk.Button(label=ok_label, stock=gtk.STOCK_OK)
		ok.connect("clicked", self.callback_ok_button, None)
		ok.set_flags(gtk.CAN_DEFAULT)
		#ok.grab_default()
		
		quit = gtk.Button(label=quit_label, stock=gtk.STOCK_CANCEL)
		quit.connect_object("clicked", self.callback_cancel_button, None)
		
		advanced = gtk.Button(label=advanced_label)
		advanced.connect_object("clicked", self.callback_advanced_button, None)
		
		box.pack_start(ok)
		box.pack_start(quit)
		box.pack_end(advanced)
		
		return box
		
	def callback_ok_button(self, widget, data=None):
		self.window.hide()
		self.install_ok = True
		gtk.main_quit()
		
	def callback_cancel_button(self, widget, data=None):
		gtk.main_quit()
		
	def callback_advanced_button(self, widget, data=None):
		self.window.hide()
		self.advanced_window.show()
	
# Shows a big fat advanced options windows
class AdvancedWindow(BasicWindow):
	
	def __init__(self, parent_window):
		BasicWindow.__init__(self)
		self.parent_window = parent_window
		
		self.add_icon()
		self.add_title(env("GUI_ADVANCED_OPTIONS"))
		self.add_info(env("GUI_ADVANCED_NOTICE"), size=400)
	
		self.add_widget(TextfieldSection(env("GUI_BASEDIR"), "BASEDIR").widget)
		self.add_widget(TextfieldSection(env("GUI_BINDIR"), "BINDIR").widget)
		self.add_widget(TextfieldSection(env("GUI_DOWNLOADDIR"), "DOWNLOADDIR").widget)
		self.add_widget(TextfieldSection(env("GUI_WGETFLAGS"), "WGETFLAGS").widget)
		
		self.add_separator()
		self.add_title("Beta")
		self.add_info(env("GUI_BETA_NOTICE"), size=400)

		ies = CheckboxesSection(env("GUI_IES"), 'h')
		ies.add_option("7.0", "INSTALLIE7")
		self.add_widget(ies.widget)

		self.add_button(env('GUI_OK'))
		
	def add_button(self, label):
		ok = gtk.Button(label=label, stock=gtk.STOCK_OK)
		ok.connect("clicked", self.callback_ok_button, None)
		ok.set_flags(gtk.CAN_DEFAULT)
		self.add_widget(ok)	
		
	def callback_ok_button(self, widget, data=None):
		self.window.hide()
		self.parent_window.show()
	
# Executes some command and shows output
class ExecutionWindow(BasicWindow):
	
	def __init__(self, command):
		BasicWindow.__init__(self)
		
		gtk.gdk.threads_init()
		self.remove_next_line = False
		
		self.command = command
		self.window.set_resizable(True)
		self.window.resize(500,500)
		
		# Make Console Window
		self.add_icon()
		self.add_title(env("GUI_INSTALLING"))
		
		sw = gtk.ScrolledWindow()
		sw.set_policy(gtk.POLICY_AUTOMATIC, gtk.POLICY_AUTOMATIC)
		self.textview = gtk.TextView()
		self.textview.set_editable(False)
		self.textbuffer = self.textview.get_buffer()
		sw.add(self.textview)
		self.current_container.pack_start(sw, True, True, 0)
		
		# Tags
		self.normal_tag = self.textbuffer.create_tag(font="Monospace")
		self.section_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD)
		self.ok_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD, foreground='Blue')
		self.error_tag = self.textbuffer.create_tag(weight=pango.WEIGHT_BOLD, foreground='Red')
		
		# Cancel/Close Button
		button = gtk.Button(label=env("GUI_CANCEL"), stock=gtk.STOCK_CANCEL)
		button.connect("clicked", self.callback_abort_installation, None)
		self.add_widget(button)
		
		threading.Thread(target=self.run_command).start()
		
	def run_command(self):
		self.process = Popen(self.command, stderr=STDOUT, stdout=PIPE)
		stdout = self.process.stdout
		
		self.process_finished = False
		self.process_interrupted = False
		
		line = ''
		while not self.process_finished:
			char = stdout.read(1)
			line = line + char
				
			if char == '\n' or char == '\r':
				self.installation_insert_text(line)
				line = ''
			
			if char == '':
				self.process_finished = True
				
		if self.process_interrupted:
			sys.exit(1)
		
		self.installation_insert_text(line + '\n')
		self.add_close_button()
		
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
		button = self.current_container.get_children()[-1]
		button.set_use_stock(True)
		button.set_label(env("GUI_CLOSE"))
	
	def callback_abort_installation(self, widget, function=None):
		if hasattr(self, 'process') and self.process.poll() == None:
			self.process_finished = True
			self.process_interrupted = True
			os.kill(self.process.pid, 9)
			self.add_close_button()
		else:
			sys.exit(0)
	
##########################################

# Auxiliary classes
class CheckboxesSection:
	
	def __init__(self, title, mode):
		self.widget = gtk.Frame(title)
		self.main_container = gtk.VBox()
		
		if mode == 'h':
			self.options_container = gtk.HBox()
			self.add_widget(self.options_container)
			self.space = 6
		else:
			self.options_container = self.main_container
			self.space = 0
			
		self.widget.add(self.main_container)
		
	def add_option(self, msg, variable):
		checkbox = create_checkbox(msg, variable)
		self.options_container.pack_start(checkbox, False, False, self.space)
	
	def add_widget(self, widget):
		self.main_container.pack_start(widget, False, False, 0)

class TextfieldSection:
	def __init__(self, label, variable):
		self.widget = gtk.Frame(label)
		textfield = create_textfield(variable)
		self.widget.add(textfield)

# Auxiliary function
def create_window(title):
	window = gtk.Window(gtk.WINDOW_TOPLEVEL)
	window.connect("destroy", lambda w: sys.exit(1))
	window.set_position(gtk.WIN_POS_CENTER)
	window.set_title(title)
	window.set_border_width(10)
	window.set_resizable(False)
	if logoImg != None:
		window.set_icon(logoImg.scale_simple(15,15,gtk.gdk.INTERP_BILINEAR))
	
	mainBox = gtk.VBox()
	window.add(mainBox)
	window.main_vbox = mainBox
	
	return window

def create_checkbox(msg, variable):
	checkButton = gtk.CheckButton(msg)
	
	if env(variable) == '1':
		checkButton.set_active(True)
	else:
		checkButton.set_active(False)
	
	checkButton.env_variable = variable
	checkButton.set_alignment(0, 0)
	
	checkbox_options.append(checkButton)
	
	return checkButton

def create_textfield(variable):
	entry = gtk.Entry()
	entry.set_text(env(variable))
	entry.env_variable = variable
	textfield_options.append(entry)
	return entry

# Returns and environment variable content
def env(key): return os.getenv(key)

##########################################

# Global variables
checkbox_options = []
textfield_options = []

# Load IEs4Linux image
try:
	logoImg = gtk.gdk.pixbuf_new_from_file("lib/ies4linux.svg")
except gobject.GError:
	logoImg = None

# Create user interface
mw = MainWindow()
mw.show()
gtk.main()


# Installer canceled
if not hasattr(mw, 'install_ok'):
	sys.exit(0)
	
#Set environment variables
for option in checkbox_options:
	if option.get_active() == True:
		os.putenv(option.env_variable, '1')
	else:
		os.putenv(option.env_variable, '0')
		
for option in textfield_options:
	os.putenv(option.env_variable, option.get_text())

os.putenv("IE6_LOCALE", mw.get_selected_locale())
os.putenv("NOCOLOR", "1")

# Install
ex = ExecutionWindow("./lib/install.sh")
ex.show()
gtk.main()

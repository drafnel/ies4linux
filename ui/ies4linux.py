from gtkgui import GTKgui
import sys, os, threading
from subprocess import *

class IEs4Linux:
	def __init__(self, gui):
		self.gui = gui
		self.process_interrupted = False
		
	def main(self):
		self.gui.create_window(title=os.getenv("GUI_TITLE"), logo="lib/ies4linux.svg")
		self.gui.create_install_tab(title=os.getenv('GUI_INSTALLATION_OPTIONS'))
		self.gui.create_advanced_tab(title=os.getenv('GUI_ADVANCED_OPTIONS'))
		self.gui.add_ok_button(os.getenv('GUI_OK'), self.install_callback)
		self.gui.add_cancel_button(os.getenv('GUI_CANCEL'),self.cancel_callback)
		
		# Installation options
		#self.gui.new_install_option_frame(os.getenv("GUI_IE"))
		self.gui.add_install_option(os.getenv("GUI_INSTALL_IE6"),  "",  True, False)
		self.gui.add_install_option(os.getenv("GUI_INSTALL_IE55"), "INSTALLIE55", False)
		self.gui.add_install_option(os.getenv("GUI_INSTALL_IE5"),  "INSTALLIE5",  False)
		self.gui.add_language_select(os.getenv("GUI_LOCALE"), os.getenv("IE6_LOCALES"), os.getenv("GUESSED_IE6_LOCALE"), "IE6_LOCALE")
		self.gui.add_separator()
		
		#self.gui.new_install_option_frame(os.getenv("GUI_EXTRA"))
		self.gui.add_install_option(os.getenv("GUI_INSTALL_FLASH"), "INSTALLFLASH", True)
		self.gui.add_install_option(os.getenv("GUI_CREATE_ICONS"),  "CREATE_ICON",  True)
		
		# Advanced options
		self.gui.add_advanced_option(os.getenv("GUI_ADVANCED_BASEDIR"),     "BASEDIR",     os.getenv("BASEDIR"))
		self.gui.add_advanced_option(os.getenv("GUI_ADVANCED_BINDIR"),      "BINDIR",      os.getenv("BINDIR"))
		self.gui.add_advanced_option(os.getenv("GUI_ADVANCED_DOWNLOADDIR"), "DOWNLOADDIR", os.getenv("DOWNLOADDIR"))
		self.gui.add_advanced_option(os.getenv("GUI_ADVANCED_WGETFLAGS"),   "WGETFLAGS",  os.getenv("WGETFLAGS"))
		
		self.gui.show()
		
	def install_callback(self):
		os.putenv('NOCOLOR','1')
		self.gui.update_environment()
		self.gui.create_installation_window()
		self.gui.add_abort_installation_button(os.getenv('GUI_CANCEL'), self.abort_installation_callback)
		threading.Thread(target=self.run_command).start()
		
	def run_command(self):
		self.process = Popen("./lib/install.sh", stderr=STDOUT, stdout=PIPE)
		stdout = self.process.stdout
		
		self.process_finished = False
		line = ''
		while not self.process_finished:
			char = stdout.read(1)
			line = line + char
				
			if char == '\n' or char == '\r':
				self.gui.installation_insert_text(line)
				line = ''
			
			if char == '':
				self.process_finished = True
				
		if self.process_interrupted:
			sys.exit(1)
		
		self.gui.installation_insert_text(line + '\n')
		self.gui.add_close_button()
		
	def cancel_callback(self):
		sys.exit(1)
		
	def abort_installation_callback(self):
		if hasattr(self, 'process') and self.process.poll() == None:
			self.process_finished = True
			self.process_interrupted = True
			os.kill(self.process.pid, 9)
			print os.getenv('GUI_CANCEL_INSTALL')
		sys.exit(1)
		
if __name__ == "__main__":
	# In the near future we will have a QT version too
	
	if sys.argv[1] == 'gtk':
		gui = GTKgui()
		
	i = IEs4Linux(gui)
	i.main()
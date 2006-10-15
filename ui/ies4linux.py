from gtkgui import *
import sys

class IEs4Linux:
	def __init__(self, gui):
		self.gui = gui
		
	def main(self):
		self.gui.init()
		
		# Installation options
		#self.gui.newInstallOptionFrame("GUI_IE")
		self.gui.addInstallOption("GUI_INSTALL_IE6", "--install-ie6", "", True)
		self.gui.addInstallOption("GUI_INSTALL_IE55", "--install-ie55", "--no-install-ie55", False)
		self.gui.addInstallOption("GUI_INSTALL_IE5", "--install-ie5", "--no-install-ie5", False)
		self.gui.addLanguageSelect()
		self.gui.addSeparator()
		
		#self.gui.newInstallOptionFrame("GUI_EXTRA")
		self.gui.addInstallOption("GUI_INSTALL_FLASH", "--install-flash", "--no-install-flash", True)
		self.gui.addInstallOption("GUI_CREATE_ICONS", "--install-icon", "--no-install-icon", True)
		
		# Advanced options
		self.gui.addAdvancedOption("GUI_ADVANCED_BASEDIR", "--basedir", "~/.ies4linux")
		self.gui.addAdvancedOption("GUI_ADVANCED_BINDIR", "--bindir", "~/bin")
		self.gui.addAdvancedOption("GUI_ADVANCED_DOWNLOADDIR", "--downloaddir", "~/.ies4linux/downloads")
		self.gui.addAdvancedOption("GUI_ADVANCED_WGETFLAGS", "--wget-flags", "--continue")
		
		self.gui.show()
		
if __name__ == "__main__":
	# In the near future we will have a QT version too
	
	if sys.argv[1] == 'gtk':
		gui = GTKgui()
		
	i = IEs4Linux(gui)
	i.main()
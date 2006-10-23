from gtkgui import *
import sys

class IEs4Linux:
	def __init__(self, gui):
		self.gui = gui
		
	def main(self):
		self.gui.init()
		
		# Installation options
		#self.gui.newInstallOptionFrame("GUI_IE")
		self.gui.addInstallOption("GUI_INSTALL_IE6",  "INSTALLIE6",  True, False)
		self.gui.addInstallOption("GUI_INSTALL_IE55", "INSTALLIE55", False)
		self.gui.addInstallOption("GUI_INSTALL_IE5",  "INSTALLIE5",  False)
		self.gui.addLanguageSelect()
		self.gui.addSeparator()
		
		#self.gui.newInstallOptionFrame("GUI_EXTRA")
		self.gui.addInstallOption("GUI_INSTALL_FLASH", "INSTALLFLASH", True)
		self.gui.addInstallOption("GUI_CREATE_ICONS",  "CREATE_ICON",  True)
		
		# Advanced options
		self.gui.addAdvancedOption("GUI_ADVANCED_BASEDIR",     "BASEDIR",     "~/.ies4linux")
		self.gui.addAdvancedOption("GUI_ADVANCED_BINDIR",      "BINDIR",      "~/bin")
		self.gui.addAdvancedOption("GUI_ADVANCED_DOWNLOADDIR", "DOWNLOADDIR", "~/.ies4linux/downloads")
		self.gui.addAdvancedOption("GUI_ADVANCED_WGETFLAGS",   "WGETFLAGS",   "--continue")
		
		self.gui.show()
		
if __name__ == "__main__":
	# In the near future we will have a QT version too
	
	if sys.argv[1] == 'gtk':
		gui = GTKgui()
		
	i = IEs4Linux(gui)
	i.main()
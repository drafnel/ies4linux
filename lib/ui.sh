# Decide what UI to run
if python -h &> /dev/null && python -c "import pygtk; pygtk.require('2.0'); import gtk" &> dev/null; then
	source "$IES4LINUX"/ui/pygtk.sh
else
	source "$IES4LINUX"/ui/terminal.sh
fi
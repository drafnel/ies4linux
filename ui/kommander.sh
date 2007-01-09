# Dynamically generates a kmdr file to install IEs4Linux

# Temporary generated file
mkdir -p "$HOME/.ies4linux/tmp"
kmdr_installer="$HOME/.ies4linux/tmp/kommander.kmdr"
echo "" > "$kmdr_installer"

# Function to calculate next Installation option position
# TODO make a better function :-)
installation_option_y_file="$(tempfile)"
echo "10" > "$installation_option_y_file"
function next_position_y() {
	local installation_option_y=$(cat "$installation_option_y_file" 2> /dev/null)
	echo -n $((installation_option_y + 30)) > "$installation_option_y_file"
	echo -n $installation_option_y
	export installation_option_y
}

# Generate file
cat << __END_KMDR__ >> "$kmdr_installer"

<!DOCTYPE UI><UI version="3.0" stdsetdef="1">
<class>form</class>
<widget class="Dialog">
	<property name="name"><cstring>form</cstring></property>
	<property name="geometry"><rect>
		<x>0</x>
		<y>0</y>
		<width>340</width>
		<height>400</height>
	</rect></property>
	<property name="caption"><string>${GUI_TITLE}</string></property>

    <widget class="Label">
        <property name="name">
            <cstring>Label1</cstring>
        </property>
        <property name="geometry">
            <rect>
                <x>60</x>
                <y>20</y>
                <width>230</width>
                <height>61</height>
            </rect>
        </property>
        <property name="paletteForegroundColor">
            <color>
                <red>22</red>
                <green>51</green>
                <blue>182</blue>
            </color>
        </property>
        <property name="font">
            <font>
                <family>Arial</family>
                <pointsize>32</pointsize>
                <bold>1</bold>
            </font>
        </property>
        <property name="text">
            <string>IEs 4 Linux</string>
        </property>
    </widget>

    <widget class="TabWidget">
        <property name="name">
            <cstring>tabs</cstring>
        </property>
        <property name="geometry">
            <rect>
                <x>10</x>
                <y>100</y>
                <width>320</width>
                <height>240</height>
            </rect>
        </property>

        <widget class="QWidget">
            <property name="name">
                <cstring>tab</cstring>
            </property>
            <attribute name="title">
                <string>${GUI_INSTALLATION_OPTIONS}</string>
            </attribute>
	
__END_KMDR__

# IE installation options
cat << __END_KMDR__ >> "$kmdr_installer"

            <widget class="CheckBox">
		<property name="name"><cstring>install_ie6</cstring></property>
                <property name="enabled"><bool>true</bool></property>
                <property name="geometry"><rect>
                        <x>20</x><y>$(next_position_y)</y>
                        <width>320</width><height>20</height>
                </rect></property>
                <property name="text"><string>${GUI_INSTALL_IE6}</string></property>
                <property name="checked"><bool>true</bool></property>
		<property name="enabled"><bool>false</bool></property>
            </widget>

            <widget class="CheckBox">
		<property name="name"><cstring>install_ie55</cstring></property>
                <property name="enabled"><bool>true</bool></property>
                <property name="geometry"><rect>
                        <x>20</x><y>$(next_position_y)</y>
                        <width>320</width><height>20</height>
                </rect></property>
                <property name="text"><string>${GUI_INSTALL_IE55}</string></property>
                <property name="checked"><bool>false</bool></property>
            </widget>

            <widget class="CheckBox">
		<property name="name"><cstring>install_ie5</cstring></property>
                <property name="enabled"><bool>true</bool></property>
                <property name="geometry"><rect>
                        <x>20</x><y>$(next_position_y)</y>
                        <width>320</width><height>20</height>
                </rect></property>
                <property name="text"><string>${GUI_INSTALL_IE5}</string></property>
                <property name="checked"><bool>false</bool></property>
            </widget>
__END_KMDR__

# IE locale selector
cat << __END_KMDR__ >> "$kmdr_installer"
	<widget class="ComboBox">
__END_KMDR__

	locale_num=0
	for locale in $(echo $IE6_LOCALES | sed -e 's/ /\n/g' | sort); do
		if [ "$locale" = "$GUESSED_IE6_LOCALE" ]; then
			select_locale=$locale_num
		fi
		echo "<item><property name=\"text\"><string>${locale}</string></property></item>" >> "$kmdr_installer"
		locale_num=$((locale_num + 1))
	done

cat << __END_KMDR__ >> "$kmdr_installer"
		<property name="currentItem"><number>${select_locale}</number></property>
		<property name="name"><cstring>locale</cstring></property>
		<property name="geometry"><rect>
			<x>20</x><y>$(next_position_y)</y>
			<width>121</width><height>20</height>
		</rect></property>
	</widget>
__END_KMDR__

# Other installation options
cat << __END_KMDR__ >> "$kmdr_installer"
            <widget class="CheckBox">
		<property name="name"><cstring>install_flash</cstring></property>
                <property name="enabled"><bool>true</bool></property>
                <property name="geometry"><rect>
                        <x>20</x><y>$(next_position_y)</y>
                        <width>320</width><height>20</height>
                </rect></property>
                <property name="text"><string>${GUI_INSTALL_FLASH}</string></property>
                <property name="checked"><bool>true</bool></property>
            </widget>

            <widget class="CheckBox">
		<property name="name"><cstring>create_icons</cstring></property>
                <property name="enabled"><bool>true</bool></property>
                <property name="geometry"><rect>
                        <x>20</x><y>$(next_position_y)</y>
                        <width>320</width><height>20</height>
                </rect></property>
                <property name="text"><string>${GUI_CREATE_ICONS}</string></property>
                <property name="checked"><bool>true</bool></property>
            </widget>
__END_KMDR__

# Advanced Tab
cat << __END_KMDR__ >> "$kmdr_installer"
		</widget>

		<widget class="QWidget">
			<property name="name"><cstring>tab</cstring></property>
			<attribute name="title"><string>${GUI_ADVANCED_OPTIONS}</string></attribute>

			<widget class="Label">
				<property name="name"><cstring>label_basedir</cstring></property>
				<property name="geometry">
					<rect><x>10</x><y>10</y><width>300</width><height>20</height></rect>
				</property>
				<property name="text"><string>${GUI_ADVANCED_BASEDIR}</string></property>
			</widget>
			<widget class="LineEdit">
				<property name="name"><cstring>basedir</cstring></property>
				<property name="geometry">
					<rect><x>25</x><y>30</y><width>250</width><height>20</height></rect>
				</property>
				<property name="text"><string>${BASEDIR}</string></property>
			</widget>
		
			<widget class="Label">
				<property name="name"><cstring>label_bindir</cstring></property>
				<property name="geometry">
					<rect><x>10</x><y>60</y><width>300</width><height>20</height></rect>
				</property>
				<property name="text"><string>${GUI_ADVANCED_BINDIR}</string></property>
			</widget>
			<widget class="LineEdit">
				<property name="name"><cstring>bindir</cstring></property>
				<property name="geometry">
					<rect><x>25</x><y>80</y><width>250</width><height>20</height></rect>
				</property>
				<property name="text"><string>${BINDIR}</string></property>
			</widget>

			<widget class="Label">
				<property name="name"><cstring>label_downloaddir</cstring></property>
				<property name="geometry">
					<rect><x>10</x><y>110</y><width>300</width><height>20</height></rect>
				</property>
				<property name="text"><string>${GUI_ADVANCED_DOWNLOADDIR}</string></property>
			</widget>
			<widget class="LineEdit">
				<property name="name"><cstring>downloaddir</cstring></property>
				<property name="geometry">
					<rect><x>25</x><y>130</y><width>250</width><height>20</height></rect>
				</property>
				<property name="text"><string>${DOWNLOADDIR}</string></property>
			</widget>

			<widget class="Label">
				<property name="name"><cstring>label_wgetflags</cstring></property>
				<property name="geometry">
					<rect><x>10</x><y>160</y><width>300</width><height>20</height></rect>
				</property>
				<property name="text"><string>${GUI_ADVANCED_WGETFLAGS}</string></property>
			</widget>
			<widget class="LineEdit">
				<property name="name"><cstring>wgetflags</cstring></property>
				<property name="geometry">
					<rect><x>25</x><y>180</y><width>250</width><height>20</height></rect>
				</property>
				<property name="text"><string>${WGETFLAGS}</string></property>
			</widget>

		</widget>
	</widget>

	<widget class="CloseButton">
		<property name="name"><cstring>install_button</cstring></property>
		<property name="geometry">
			<rect>
				<x>10</x><y>350</y>
				<width>165</width><height>40</height>
			</rect>
		</property>
		<property name="text"><string>${GUI_OK}</string></property>
		<property name="associations" stdset="0"><stringlist><string>
			@setGlobal(command, "--install-ie6")

			@if (@install_ie55.checked)
				echo export INSTALLIE55=1
			@endif
			
			@if (@install_ie5.checked)
				echo export INSTALLIE5=1
			@endif

			@if (!@install_flash.checked)
				echo export INSTALLFLASH=0
			@endif

			@if (!@create_icons.checked)
				echo export CREATE_ICON=0
			@endif

			echo export IE6_LOCALE=@locale.text
	
			echo export BASEDIR=\"@basedir.text\"
			echo export BINDIR=\"@bindir.text\"
			echo export DOWNLOADDIR=\"@downloaddir.text\"
			echo export WGETFLAGS=\"@wgetflags.text\"
			echo export CANCELLED=false

		</string></stringlist></property>
        	<property name="accel"><number>4101</number></property>
	</widget>

	<widget class="CloseButton">
		<property name="name"><cstring>close_button</cstring></property>
		<property name="geometry">
			<rect>
			<x>175</x>
			<y>350</y>
			<width>155</width>
			<height>40</height>
			</rect>
		</property>
		<property name="text"><string>${GUI_CANCEL}</string></property>
		<property name="accel"><number>4096</number></property>
		<property name="associations" stdset="0"><stringlist><string>
			echo export CANCELLED=true
		</string></stringlist></property>
	</widget>

</widget>

<layoutdefaults spacing="6" margin="11"/>
</UI>
__END_KMDR__

rm "$installation_option_y_file"

eval $(kmdr-executor --icon "$IES4LINUX/lib/ies4linux.svg" "$kmdr_installer")
rm "$kmdr_installer"

if [ "$CANCELLED" != "false" ]; then
	echo $GUI_CANCEL_INSTALL
	exit
fi

# Execute command on Konsole
konsole -T "${GUI_TITLE}" --nomenubar --notabbar --noclose --schema BlackOnWhite --icon "$IES4LINUX/lib/ies4linux.svg" --vt_sz 60x30 -e "$IES4LINUX/lib/install.sh"


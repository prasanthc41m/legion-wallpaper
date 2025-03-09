all: clean build

BG_LOCATION = /usr/share/backgrounds/Legion
CONF_LOCATION = /usr/share/gnome-background-properties

build:
	zip Legion.zip Legion-red.jpg Legion-blue.jpg Legion-green.jpg  Legion-timed-d.xml Legion-red-l.jpg Legion-blue-l.jpg Legion-green-l.jpg Legion-timed-l.xml legion.xml  default light

install:
	rm -rf $(BG_LOCATION)
	mkdir -p $(BG_LOCATION)
	cp -R  default light $(BG_LOCATION)
	cp -R legion.xml $(CONF_LOCATION)
	sudo chmod -R 755 *
	
	gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/Legion/Legion-timed-l.xml
	gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/Legion/Legion-timed-d.xml
	echo 'Wallpaper installed.'

uninstall:
	rm -rf $(BG_LOCATION)

reinstall: uninstall install

clean:
	rm -f *.zip

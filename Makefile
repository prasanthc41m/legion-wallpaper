all: clean build

BG_LOCATION = /usr/share/backgrounds/Legion
CONF_LOCATION = /usr/share/gnome-background-properties

build:
	zip Legion.zip Legion.jpg Legion-light.jpg Legion-morning.jpg Legion-timed.xml Legion.xml

install:
	rm -rf $(BG_LOCATION)
	mkdir -p $(BG_LOCATION)
	cp -R Legion.jpg Legion-light.jpg Legion-morning.jpg Legion-timed.xml  $(BG_LOCATION)
	cp -R Legion.xml  $(CONF_LOCATION)
	echo 'Wallpaper installed. Use GNOME Settings to change.'

uninstall:
	rm -rf $(BG_LOCATION)

reinstall: uninstall install

clean:
	rm -f *.zip

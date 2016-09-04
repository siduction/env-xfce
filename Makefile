#!/usr/bin/make -f

include VERSION

all: clean
	mkdir -p ./build/$(NAME)/balou
	inkscape --without-gui --export-width=1280 --export-height=1024 \
	    --export-png="./build/$(NAME)/balou/logo.png" "./theme/logo.svg"
	convert -quality 90 "./build/$(NAME)/balou/logo.png" "./build/$(NAME)/balou/logo.jpg"
	rm "./build/$(NAME)/balou/logo.png"
	cp ./theme/themerc "./build/$(NAME)/balou/"

clean:
	$(RM) -r build

#!/usr/bin/make -f

include VERSION

all: clean
	mkdir -p ./build/$(CODENAME_SAFE)/balou
	inkscape --without-gui --export-width=1280 --export-height=1024 \
	    --export-png="./build/$(CODENAME_SAFE)/balou/logo.png" "./theme/logo.svg"
	convert -quality 90 "./build/$(CODENAME_SAFE)/balou/logo.png" "./build/$(CODENAME_SAFE)/balou/logo.jpg"
	rm "./build/$(CODENAME_SAFE)/balou/logo.png"
	cp ./theme/themerc "./build/$(CODENAME_SAFE)/balou/"

clean:
	$(RM) -r build

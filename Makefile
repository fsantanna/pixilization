all:
	cat ../pico-ce/pico.ce src/pixilization.ce > /tmp/x.ce
	ce -o pixilization -cc "-g -lSDL2 -lSDL2_ttf -include ../pico-sdl/src/pico.c" /tmp/x.ce
	sleep 1
	./pixilization

c:
	cat ../pico-ce/pico.ce src/pixilization.ce > /tmp/x.ce
	ce -o pixilization.c -c -cc "-lSDL2 -include ../pico-sdl/src/pico.c" /tmp/x.ce

.PHONY: c all

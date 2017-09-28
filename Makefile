BUILD_DIR=.build

all:
	$(shell if [ ! -d $(BUILD_DIR) ]; then mkdir $(BUILD_DIR); fi )
	cd $(BUILD_DIR) && FREETYPE2CONFIG=freetype-config qmake ../FontBuilder.pro && make

clean:
	rm -fr $(BUILD_DIR)


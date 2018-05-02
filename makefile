LIB_DIR = lib

default: pyexamples

pyexamples: setup.py pyexamples.pyx $(LIB_DIR)/libexamples.a
	python3 setup.py build_ext --inplace && rm -f pyexamples.c && rm -Rf build

$(LIB_DIR)/libexamples.a:
	make -C $(LIB_DIR) libexamples.a

clean:
	rm *.so

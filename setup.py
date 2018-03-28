from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="pyexamples",
    sources=["pyexamples.pyx"],
    libraries=["examples"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="pyexamples",
    ext_modules=cythonize([examples_extension])
)

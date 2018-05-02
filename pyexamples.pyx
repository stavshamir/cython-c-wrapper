cdef extern from "examples.h":
    void hello(const char *name)

def py_hello(name: bytes) -> None:
    hello(name)

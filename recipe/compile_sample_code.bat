@echo on

cl test.c /I%LIBRARY_INC% /I%LIBRARY_INC%\targets\x64 /link /LIBPATH:%LIBRARY_LIB%\x64 cublas.lib

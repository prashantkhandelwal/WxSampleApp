CC_LINUX = g++
CC_WIN32 = i586-mingw32msvc-g++
CFLAGS_WIN32 = wx-config --cxxflags
CFLAGS_WIN32_LIBS = wx-config --libs
CFLAGS_LINUX = wx-config --cxxflags --libs
INCLUDE_DIR = /usr/i586-mingw32msvc/bin/

win_build: 
	$(CC_WIN32) -c -o main.o main.cc `$(INCLUDE_DIR)$(CFLAGS_WIN32)`
	$(CC_WIN32) -c -o windowApp.o windowApp.cc `$(INCLUDE_DIR)$(CFLAGS_WIN32)`
	$(CC_WIN32) -o sample.exe main.o windowApp.o `$(INCLUDE_DIR)$(CFLAGS_WIN32_LIBS)`

linux_build:
	$(CC_LINUX) main.cc main.h windowApp.cc windowApp.h `$(CFLAGS_LINUX)` -o sample


clean:
	rm -f *.o
	rm -f *.exe

#i586-mingw32msvc-g++ -c -o windowApp.o windowApp.cc `/usr/i586-mingw32msvc/bin/wx-config --cxxflags`
#i586-mingw32msvc-g++ -o app.exe main.o windowApp.o `/usr/i586-mingw32msvc/bin/wx-config --libs`

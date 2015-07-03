i586-mingw32msvc-g++ -c -o main.o main.cc `/usr/i586-mingw32msvc/bin/wx-config --cxxflags`

i586-mingw32msvc-g++ -c -o windowApp.o windowApp.cc `/usr/i586-mingw32msvc/bin/wx-config --cxxflags`


i586-mingw32msvc-g++ -o app.exe main.o windowApp.o `/usr/i586-mingw32msvc/bin/wx-config --libs`

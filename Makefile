.PHONY: all clean

all: hello

clean:
	rm -rf hello

NDK := D:\apps\android-ndk-r20
TOOLCHAIN := $(NDK)\toolchains\llvm\prebuilt\windows-x86_64\bin


CC := $(TOOLCHAIN)\clang.exe
CXX := $(TOOLCHAIN)\clang++.exe
AR := $(TOOLCHAIN)\ar.exe
LD := $(TOOLCHAIN)\ld.exe

C_FLAGS := --target=armv7a-linux-androideabi26
CXX_FLAGS := --target=armv7a-linux-androideabi26

hello: hello.c
	$(CC) $(CXX_FLAGS) hello.c -o hello

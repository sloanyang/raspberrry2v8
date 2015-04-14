raspberrRy2v8 [![Build Status](https://api.travis-ci.org/sloanyang/raspberrry2v8.svg?branch=master)](https://travis-ci.org/sloanyang/raspberrry2v8)
====

__raspberrRy2v8__ is a kernel built on V8 JavaScript engine. It uses event-driven and non-blocking I/O model inspired by Node.js.

The goal of this project is to design and implement a kernel that is optimized to run JavaScript applications. By providing environment for JavaScript code only, it is possible to rethink kernel design to improve security, reliability and performance of the system. 

It's currently under development and does not include many essential features. If you want to contribute, your help is very welcome.

You can use issues section to ask any questions or share your ideas https://github.com/sloanyang/raspberrry2v8/issues

![Console](https://raw.githubusercontent.com/sloanyang/sloanyang.github.io/master/raspberrrypi2v8_index/runtimejs_3.png)


Technical details
----

Kernel [architecture](https://github.com/sloanyang/raspberrry2v8/wiki/Architecture)

- supported raspberrypi board and arm based board (SUPPOSED). 
- software isolated applications ([isolates](https://github.com/sloanyang/raspberrry2v8/wiki/Isolate))
- single address space, no hardware context switches
- does not use cpu protection rings
- non-blocking asynchronous [inter-isolate communication](https://github.com/sloanyang/raspberrry2v8/wiki/RPC) (IIC)
- drivers and system services are implemented in JavaScript
- low-level kernel services are written in C++11

Status
----

####What's done

- V8 isolates
- multitasking (cooperative only)
- Inter-isolate communication using [RPC](https://github.com/sloanyang/raspberrry2v8/wiki/RPC)
- embedded ACPICA for ACPI support
- simple keyboard and VGA display drivers
- shell and some basic applications
- PCI bus driver device detection
- virtio-net driver


####Planned

- network stack
- virtual file system
- virtio drivers for storage and network


Build
----
####Prerequisites
- gcc 4.8 or newer cross compiler (target x86\_64-elf)
- fasm
- scons

*Warning: gcc 4.9.0 is not supported because of libc++ compile bug (use 4.9.1 or newer)*

####Building

You need to install fasm, scons and GCC cross compiler targeting x86\_64-elf. http://wiki.osdev.org/GCC_Cross-Compiler

To build

    scons
    
####Run using QEMU (recommended version >= 2.0.0)

    ./qemu.sh
    
####Try prebuilt binaries in QEMU

Download latest __runtime__ and __initrd__ files from releases page https://github.com/runtimejs/runtime/releases

Run
```bash
qemu-system-x86_64                                \
    -m 512                                        \
    -smp 1                                        \
    -kernel runtime                               \
    -initrd initrd                                \
    -serial stdio
```
    
Documentation
----
[Wiki pages](https://github.com/sloanyang/raspberrry2v8/wiki)


License
----
GNU GENERAL PUBLIC LICENSE, Version 2, June 1991

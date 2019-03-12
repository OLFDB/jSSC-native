# jSSC-native

Native component for jSSC (Java Simple Serial Connector)

## Build Instructions

You must set JAVA_HOME to the path of your JDK installation directory.
This command will output the current value of JAVA_HOME -- make sure it
points to the correct directory.

    echo $JAVA_HOME

You can use this command to set your JAVA_HOME automatically.

    export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))

(You can add that line to your `~/.profile` if you want the variable set
automatically whenever you log in.)

If you need to cross-compile, be sure to set CXX and CFLAGS. The next
command shows an example of CXX and CFLAGS values for a Raspberry Pi:

    CXX=arm-linux-gnueabihf-g++
    CFLAGS=-Os

Then build it:

    make

## TODO

Roughly in the order they need to be done. Hopefully, all the tools
necessary to make the first release build will be in place before we
even touch the code.

- [x] rudimentary build system that supports cross-compiling
- [ ] add versioning based on git tags to the output file
- [ ] choose reliable toolchains for all currently-supported
      architectures
- [ ] find a way to cross-compile to windows

- cross-compiling to windows means we could reuse the same CPU
  architecture toolchains for all OS platforms
- we should still take care to write our code and Makefiles so that it
  could be compiled on windows, given the right environment variables -
  but windows users have to provide their own toolchain
- windows users who don't need to compile from source can download the
  binaries straight from our official releases
- developers who want to contribute but are only running windows can use
  WSL, i think it should produce identical builds

- [ ] decide whether cmake (or possibly autotools) is appropriate; if
      not, get the Makefile up to production quality
- [ ] integrate native component's build system with java component's
      build system
- [ ] set up CI
- [ ] set up somewhere to host release builds, maybe a CI hook to push
      to the gh-pages branch -- integrate with java component's build
      system if necessary
- [ ] fix warnings, turn on -Werror
- [ ] set up linter and code review policies
- [ ] unify windows & linux codebase
- [ ] add unit testing

More to come as we get familiar with the code.

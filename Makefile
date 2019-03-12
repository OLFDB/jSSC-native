src = $(wildcard src/*.cpp) \
      $(wildcard src/_nix_based/*.cpp)
obj = $(src:.cpp=.o)

CXXFLAGS = -Wall -Wextra -fpic -I"$(JAVA_HOME)/include" -I"$(JAVA_HOME)/include/linux"

.PHONY: all clean

all: libjssc.so

clean:
	rm -f libjssc.so $(obj)

libjssc.so: $(obj)
	$(CXX) -shared -o $@ $^ $(LDFLAGS)

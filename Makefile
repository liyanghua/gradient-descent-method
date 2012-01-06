CPPFLAGS=-g -Wall 

BOOST_HOME=/home/yichen.lyh/boost_home/

LIBS=-L.  -L /usr/include/ -L ${BOOST_HOME}/include/

EXES=gradient_descent.cpp

.PHONY : clean all

all: $(subst .cpp,.o,$(SOURCES))  $(EXES) gradient_descent


%.O: %.cpp
	$(CXX) $(CPPFLAGS) $^ ${LIBS} $@
gradient_descent: gradient_descent.cpp
	$(CXX) $(CPPFLAGS) $^  ${LIBS} -o $@

clean:
	rm -rf  *.o  gradient_descent

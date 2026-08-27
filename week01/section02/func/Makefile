PROG = func
OBJS = func1.o func2.o

# @ is the Makefile variable for the name of the target
# < is the Makefile variable for the first dependency
# ^ is the Makefile variable for all of the dependencies

%.o: %.c
	gcc -c -o $@ $<

$(PROG): $(OBJS)
	gcc -o $(PROG) $^

clean:
	rm -rf $(PROG) $(OBJS)

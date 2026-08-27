PROG=func

# Always check that you didn't put .c files in OBJS
# they will be deleted by "make clean"
OBJS=func1.o func2.o 

# $@ is the name of the target (file name on left side of ':')
# $< is the name of the first dependency
# $^ means all of the dependencies

	
$(PROG):  $(OBJS)
	gcc -o $(PROG) $^

%.o: %.c
	gcc -c -o $@ $<

clean:
	rm -rf $(PROG) $(OBJS)

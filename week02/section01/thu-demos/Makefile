PROGS = countdown sum even ifelse
COUNTDOWN_OBJS = countdown.o countdown_c.o countdown_s.o
SUM_OBJS = sum.o sum_c.o sum_s.o
EVEN_OBJS = even.o even_c.o even_s.o
IFELSE_OBJS = ifelse.o ifelse_c.o ifelse_s.o

OBJS = $(COUNTDOWN_OBJS) $(SUM_OBJS) $(EVEN_OBJS)

%.o: %.c
	gcc -c -g -o $@ $<

%.o: %.s
	as -g -o $@ $<

all: $(PROGS)

countdown: $(COUNTDOWN_OBJS)
	gcc -g -o $@ $^

sum: $(SUM_OBJS)
	gcc -g -o $@ $^

even: $(EVEN_OBJS)
	gcc -g -o $@ $^

ifelse: $(IFELSE_OBJS)
	gcc -g -o $@ $^

clean:
	rm -rf $(PROGS) $(OBJS)

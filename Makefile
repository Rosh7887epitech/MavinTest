CC = gcc
CFLAGS = -Wall -Wextra -Werror -lcriterion
TARGET = main
SRCS = main.c
TEST_SRCS = $(wildcard tests/*.c)
OBJS = $(SRCS:.c=.o)
TEST_OBJS = $(TEST_SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -f $(OBJS) $(TEST_OBJS)

fclean: clean
	rm -f $(TARGET)

testrun: $(TARGET)
	./$(TARGET)

coverage: $(OBJS)
	$(CC) $(CFLAGS) --coverage -o $(TARGET) $(OBJS)
	./$(TARGET)
	gcov $(SRCS)

test: $(TEST_OBJS)
	$(CC) $(CFLAGS) -o test_runner $(TEST_OBJS)
	./test_runner

re: fclean all

.PHONY: all clean fclean re test

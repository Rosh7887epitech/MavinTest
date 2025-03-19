CC = gcc
CFLAGS = -Wall -Wextra -Werror -lcriterion
TARGET = main
SRCS = main.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

clean:
	rm -f $(OBJS) $(TEST_OBJS)

fclean: clean
	rm -f $(TARGET)

test_run:
	tests/test.sh

re: fclean all

.PHONY: all clean fclean re test

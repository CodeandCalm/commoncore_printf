# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tstacul <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/24 13:15:25 by tstacul           #+#    #+#              #
#    Updated: 2024/06/26 23:43:34 by tstacul          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libftprintf.a

FILES := ./ft_printf.c \
	 ./ft_numbers.c \
	 ./ft_words.c \

COMPILER = gcc

CFLAGS = -Wall -Wextra -Werror

OFILES := $(FILES:.c=.o)

all: $(NAME)

$(NAME) : $(OFILES)
	@echo "Creating archive file..."
	ar -rcs $(NAME) $(OFILES)
%.o: %.c
	@echo "Compiling $<..."
	$(COMPILER) $(CFLAGS) -c $< -o $@
clean:
	@echo "Cleaning object files..."
	rm -f  $(OFILES)

fclean: clean
	@echo "Removing object files..."
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re

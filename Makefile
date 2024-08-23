# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tstacul <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/19 13:36:28 by tstacul           #+#    #+#              #
#    Updated: 2024/06/19 18:14:47 by tstacul          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libftprintf.a

FILES := ./ft_printf.c \
	 ./ft_numbers.c \
	 ./ft_words.c \
	 ./main.c \

COMPILER = gcc

CFLAGS = -Wall -Wextra -Werror

OFILES := $(FILES:.c=.o)

all: $(NAME)

$(NAME) : $(OFILES)
	ar -rcs $(NAME) $(OFILES)
%.o: %.c
	$(COMPILER) $(CFLAGS) -c $< -o $@
clean :
	rm -f  $(OFILES)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY: all, clean, fcleaen, re

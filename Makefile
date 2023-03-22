# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfinni <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/20 14:38:09 by tfinni            #+#    #+#              #
#    Updated: 2023/02/20 14:38:15 by tfinni           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
CC		= cc
FLAGS	= -Wall -Wextra -Werror
SRC		= ft_printf.c ft_printuns.c ft_uitoa.c write_checker.c
LIBFTOBJ= libft/ft_itoa.o libft/ft_strlen.o
OBJ		= $(SRC:.c=.o)
LIBFT	= libft

all: $(NAME)

$(NAME): 
	make -C $(LIBFT)
	$(CC) $(FLAGS) -c $(SRC) -I $(LIBFT)
	ar rc $(NAME) $(OBJ) $(LIBFTOBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)
	make clean -C $(LIBFT)

fclean: clean
	rm -f $(NAME)
	make fclean -C $(LIBFT) 
	
re: fclean all
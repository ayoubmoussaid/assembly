# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoussai <amoussai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 19:03:30 by amoussai          #+#    #+#              #
#    Updated: 2020/02/08 19:15:01 by amoussai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME =	libasm.a
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRCS:.s=.o)

FLAGS=-fmacho64

.PHONY: clean fclean all re

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o : %.s
	nasm $(FLAGS) $<

clean:
	rm -f *.o
fclean: clean
	rm -f $(NAME)
re: fclean all

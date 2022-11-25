# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cjoao-me <cjoao-me@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 16:04:42 by cjoao-me          #+#    #+#              #
#    Updated: 2022/11/25 10:20:15 by cjoao-me         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c \
       ft_isdigit.c ft_isalnum.c ft_isascii.c \
	   ft_isprint.c ft_toupper.c ft_tolower.c ft_atoi.c \
	   ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strncmp.c \
	   ft_strnstr.c ft_strchr.c ft_strrchr.c ft_strdup.c \
	   ft_calloc.c ft_memset.c ft_bzero.c ft_memcpy.c \
	   ft_memmove.c ft_memchr.c ft_memcmp.c \
	   ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	   ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
	   ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BSRC = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
       ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
	   ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ = $(SRC:.c=.o)

BOBJ = $(BSRC:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re

$(NAME):
	$(CC) $(CFLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)

all: $(NAME)

bonus: $(NAME)
	$(CC) $(CFLAGS) -c $(BSRC)
	ar rc $(NAME) $(BOBJ)


clean:
	rm -f $(OBJ) $(BOBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all



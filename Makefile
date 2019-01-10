# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: muelfaha <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/29 20:35:09 by muelfaha          #+#    #+#              #
#    Updated: 2019/01/09 17:47:06 by muelfaha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC =./ft_strlen.c ./ft_strcpy.c ./ft_strncpy.c ./ft_strcmp.c ./ft_strncmp.c\
	 ./ft_strcat.c ./ft_strncat.c ./ft_strlcat.c ./ft_strchr.c ./ft_strrchr.c\
	 ./ft_strdup.c ./ft_strstr.c ./ft_strnstr.c ./ft_striter.c ./ft_strequ.c\
	 ./ft_atoi.c ./ft_bzero.c ./ft_putchar_fd.c ./ft_putstr_fd.c ./ft_strsub.c\
	 ./ft_putnbr_fd.c ./ft_itoa.c ./ft_negmod.c ./ft_strjoin.c ./ft_strtrim.c\
	 ./ft_strnew.c ./ft_strclr.c ./ft_memdel.c ft_memcmp.c ft_memalloc.c\
	 ./ft_striteri.c ./ft_strnequ.c ./ft_strmap.c ./ft_strmapi.c ./ft_lstmap.c\
	 ./ft_memset.c ./ft_memcpy.c ./ft_memccpy.c ft_memmove.c ./ft_memchr.c\
	 ./ft_isalpha.c ./ft_isalnum.c ./ft_isascii.c ./ft_isprint.c ft_isdigit.c\
	 ./ft_toupper.c ./ft_tolower.c ./ft_putchar.c ./ft_putstr.c ./ft_putnbr.c\
	 ./ft_lstnew.c ./ft_lstdelone.c ./ft_lstdel.c ./ft_lstadd.c ./ft_lstiter.c\
	 ./ft_strsplit.c ./ft_memalloc.c ./ft_memdel.c ./ft_wrdcount.c ft_wrdcpy.c\
	 ./ft_putendl.c ./ft_putendl_fd.c ./ft_strdel.c ./ft_lstmap.c ./ft_abc.c\

INCLUDES = libft.h

OBJECTS = *.o

$(NAME):
	gcc -Wall -Wextra -Werror -c $(SRC) -I $(INCLUDES)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

all: $(NAME)

clean:
	/bin/rm -f $(OBJECTS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

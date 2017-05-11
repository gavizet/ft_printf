# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gavizet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/12/21 21:02:19 by gavizet           #+#    #+#              #
#    Updated: 2016/12/22 21:45:24 by gavizet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# COMPILATION #
CC		= gcc
FLAGS	= -c -Wall -Wextra -Werror

# LIBRARY #
NAME	= libftprintf.a

# SOURCES #
SRC		= srcs/check.c\
		  srcs/ft_printf.c\
		  srcs/get_conversion.c\
		  srcs/manage_binary.c\
		  srcs/manage_hexa.c\
		  srcs/manage_int.c\
		  srcs/manage_octal.c\
		  srcs/manage_percent.c\
		  srcs/manage_pointer.c\
		  srcs/manage_uns_int.c\
		  srcs/parse_args.c\
		  srcs/utils.c\
		  srcs/cast.c\
		  srcs/manage_char.c\
		  srcs/manage_wchar.c\
		  srcs/manage_wstring.c\
		  srcs/manage_string.c\
		  libft/ft_atoi.c\
		  libft/ft_itoa.c\
		  libft/ft_calc_wstrlen.c\
		  libft/ft_itoa_base_uns.c\
		  libft/ft_itoa_base_signed.c\
		  libft/ft_putchar.c\
		  libft/ft_putnwstr.c\
		  libft/ft_putstr.c\
		  libft/ft_putwchar.c\
		  libft/ft_strdel.c\
		  libft/ft_strlen.c\
		  libft/ft_strncmp.c\
		  libft/ft_strnew.c\
		  libft/ft_wstrlen.c

OBJ		= $(notdir $(SRC:.c=.o))

all: $(NAME)

$(NAME):
	@echo "\033[0;33mBuilding...\033[0m"
	@$(CC) $(FLAGS) $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[0;32mCompilation is now finished.\033[0m"			

clean:
	@echo "\033[0;31mDeleting object files...\033[0m"
	@/bin/rm -f $(OBJ)
	@echo "\033[0;32mObject files were correctly deleted.\033[0m"			

fclean: clean
	@echo "\033[0;31mCleaning everything...\033[0m"
	@/bin/rm -f $(NAME)
	@echo "\033[0;32mlibftprintf.a was correctly deleted.\033[0m"			

re: fclean all

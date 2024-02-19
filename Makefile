# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: erpiana <erpiana@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/29 07:56:03 by erpiana           #+#    #+#              #
#    Updated: 2024/02/19 18:02:34 by erpiana          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#******************************************************************************#
#                                   PATH                                       #
#******************************************************************************#

SRCS_PATH 		:= srcs/
SRCS_BONUS		:= bonus/
INCS 			:= include/
CPPFLAGS 		:= $(addprefix -I,$(INCS)) -MP

#******************************************************************************#
#                                   FILES                                      #
#******************************************************************************#

SRCS 		:= $(addprefix $(SRCS_PATH), ft_isascii.c ft_isprint.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
				ft_tolower.c ft_toupper.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
				ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c \
				ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
				ft_memchr.c ft_memcmp.c ft_strdup.c ft_calloc.c ft_itoa.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
				ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_strmapi.c \
				ft_striteri.c)
OBJS		+=	$(addprefix obj_mandatory/, $(notdir $(SRCS:.c=.o)))
BONUS 		:=	$(addprefix $(SRCS_BONUS), ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c \
				ft_lstclear_bonus.c ft_lstdelone_bonus.c \
				ft_lstiter_bonus.c ft_lstlast_bonus.c \
				ft_lstmap_bonus.c ft_lstnew_bonus.c \
				ft_lstsize_bonus.c)
BONUS_OBJS	+= $(addprefix obj_bonus/, $(notdir $(BONUS:.c=.o)))
NAME 		:= libft.a

#******************************************************************************#
#                                  BASH COMMANDS                               #
#******************************************************************************#

RM 			:= rm -rf

#******************************************************************************#
#                                  COMPILATION                                 #
#******************************************************************************#

CC 			:= cc
CFLAGS 		:= -Wall -Wextra -Werror

#******************************************************************************#
#                                   TARGETS                                    #
#******************************************************************************#

all: obj $(NAME)

obj:
	mkdir -p obj_mandatory
	mkdir -p bonus_mandatory

$(NAME): $(OBJS)
		ar -rcs $(NAME) $(OBJS)
		echo "Comprimindo no arquivo $@"
		
obj_mandatory/%.o: $(SRCS_PATH)%.c
		$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@
		echo "Compilando o arquivo $< no arquivo $@"
		
clean:
		$(RM) obj_mandatory
		
fclean:	clean
		$(RM) $(NAME)
		
re:	fclean $(NAME)

bonus:	$(OBJS) $(BONUS_OBJS)
		ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:	all clean fclean re bonus

.DEFAULT_GOAL = all

.SILENT:
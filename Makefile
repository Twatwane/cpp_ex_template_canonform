# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajosse <ajosse@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/22 23:27:28 by ajosse            #+#    #+#              #
#    Updated: 2025/02/07 15:13:16 by ajosse           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = prog_name 

FILES = file1.cpp file2.cpp ...
OBJS = $(FILES:%.cpp=%.o)

FILES_path = $(FILES:%=srcs/%)
OBJS_path = $(OBJS:%=objs/%)

INCLUDES = -I./includes

NB_COMPILED = 0
TOTAL_FILES := $(shell echo $(words $(FILES))| bc)

CC = c++
CFLAGS = -Wall -Wextra -Werror -std=c++98

# \033[1;xxm for bold (gras)
RESET_COLOR      = \033[m
RED_COLOR     = \033[1;31m
ORANGE_COLOR  = \033[1;38;5;214m
YELLOW_COLOR  = \033[1;33m
GREEN_COLOR   = \033[1;32m
CYAN_COLOR    = \033[1;36m
BLUE_COLOR    = \033[1;34m
PURPLE_COLOR  = \033[1;35m
PINK_COLOR    = \033[1;38;5;13m
BROWN_COLOR   = \033[1;38;5;94m

all: $(NAME)

project_done:
	@ echo -n "\r"
	@ echo    "$(BROWN_COLOR)compiling c files . . . $(TOTAL_FILES)/$(TOTAL_FILES)       $(RESET_COLOR)"
	@ echo -n "$(GREEN_COLOR)- $(NB_COMPILED) files updated -\n\n$(RESET_COLOR)"

$(NAME): $(OBJS_path) project_done
	@ $(CC) $(CFLAGS) $(OBJS_path) -o $(NAME)

objs/%.o: srcs/%.cpp
	@ mkdir -p objs
	@ $(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@
	@ $(eval NB_COMPILED=$(shell echo $(NB_COMPILED) + 1 | bc))  # Augmente le compteur
	@ echo -n "\r"
	@ echo -n "$(BROWN_COLOR)compiling c files . . . $(NB_COMPILED)/$(TOTAL_FILES)$(RESET_COLOR)"

clean:
	@ rm -f $(OBJS_path)
	@ echo "$(PURPLE_COLOR)cleaned OBJs$(RESET_COLOR)"

fclean: clean
	@ rm -f $(NAME)
	@ echo "$(PURPLE_COLOR)cleaned $(NAME) binary$(RESET_COLOR)"

re: fclean all

.PHONY: all clean fclean re

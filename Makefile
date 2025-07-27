# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pacda-si <pacda-si@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/23 16:41:00 by pacda-si          #+#    #+#              #
#    Updated: 2025/07/27 18:29:07 by pacda-si         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ────────────────────────────── Colors ──────────────────────────────
BOLD            = \033[1m
RESET           = \033[0m
GREEN           = \033[0;32m
CYAN            = \033[0;36m
LIGHT_RED       = \033[91m
LIGHT_GREEN     = \033[92m
LIGHT_CYAN      = \033[96m
BROWN           = \033[38;5;94m

NEON_GREEN      = \033[38;5;46m
ELECTRIC_BLUE   = \033[38;5;51m
HOT_PINK        = \033[38;5;198m
BLOOD_RED       = \033[38;5;196m
SUNBURST_YELLOW = \033[38;5;226m
DEEP_ORANGE     = \033[38;5;208m
PURPLE_RAVE     = \033[38;5;129m
CYAN_SHOCK      = \033[38;5;51m

BG_FIRE         = \033[48;5;196m
BG_LIME         = \033[48;5;46m
BG_ULTRA_BLUE   = \033[48;5;21m
BG_MAGENTA      = \033[48;5;201m

# ────────────────────────────── Files ───────────────────────────────
NAME        = woody_woodpacker

SRCS_DIR    = ./srcs
SRCS        = $(SRCS_DIR)/woody.c

INCS_DIR	= ./includes
INCS		= $(INCS_DIR)/woody.h \
			  $(INCS_DIR)/colors.h

OBJS_DIR    = objs
OBJS        = $(SRCS:$(SRCS_DIR)/%.cpp=$(OBJS_DIR)/%.o)

# ────────────────────────────── Compiler ────────────────────────────
CC         = cc
CFLAGS     = -Werror -Wall -Wextra -g3

# ────────────────────────────── Rules ───────────────────────────────
all: $(NAME)

$(NAME): $(OBJS) $(INCS)
	@echo "$(BLOOD_RED)$(BOLD)Making $(NAME)...$(RESET)"
	@$(CC) $(OBJS) -o $(NAME)
	@echo "$(NEON_GREEN)$(BOLD)Made $(NAME) without any problem. ✔\n$(RESET)"

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.cpp
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@if [ -d "$(OBJS_DIR)" ]; then \
		echo "$(SUNBURST_YELLOW)$(BOLD)Removing all object files..$(RESET)"; \
		rm -rf $(OBJS_DIR); \
		echo "$(NEON_GREEN)$(BOLD)Done. ✔$(RESET)"; \
	else \
		echo "$(CYAN_SHOCK)$(BOLD)No object files to remove. Skipping clean.$(RESET)"; \
	fi

fclean: clean
	@if [ -f "$(NAME)" ]; then \
		echo "$(SUNBURST_YELLOW)$(BOLD)Removing executable..$(RESET)"; \
		rm -f $(NAME); \
		echo "$(NEON_GREEN)$(BOLD)Done. ✔$(RESET)"; \
	else \
		echo "$(CYAN_SHOCK)$(BOLD)No executable to remove. Skipping fclean.$(RESET)"; \
	fi

re: fclean all

default: all

.PHONY: default all re fclean clean
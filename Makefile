# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fhamel <fhamel@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/25 20:20:38 by florianhame       #+#    #+#              #
#    Updated: 2021/09/20 13:39:58 by fhamel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#####                              FILES VARS                              #####
################################################################################

NAME		=	minishell

D_INCLUDES	=	includes/

D_OBJS		=	objs/

D_SRCS		=	srcs/

_SRC_		=	args.c \
				bin_utils.c \
				bin.c \
				builtins.c \
				call.c \
				cmd_checkers.c \
				cmd_utils.c \
				cmd.c \
				cursor_move.c \
				env.c \
				free_exit_cmd.c \
				free_exit_parsing.c \
				ft_cd_utils.c \
				ft_cd.c \
				ft_echo.c \
				ft_env.c \
				ft_exit_utils.c \
				ft_exit.c \
				ft_export_utils.c \
				ft_export.c \
				ft_pwd.c \
				ft_unset.c \
				gnl.c \
				heredoc_utils.c \
				heredoc.c \
				history_navigation.c \
				history_utils.c \
				history_utils2.c \
				history.c \
				main.c \
				minishell.c \
				open.c \
				quotes.c \
				read_utils.c \
				read.c \
				run.c \
				set_utils.c \
				set_utils2.c \
				set.c \
				str_utils.c \
				str.c \
				syntax_error.c \
				utils.c \
				var_lst.c \
				var.c \

SRCS		=	$(addprefix $(D_SRCS), $(_SRC_))

OBJS		=	$(addprefix $(D_OBJS), $(_SRC_:.c=.o))

D_LIBFT		=	libft/

LIBFT		=	libft.a

################################################################################
#####                           COMPILER OPTIONS                           #####
################################################################################

CC			=	clang

FLAGS		=	-Wall -Wextra -Werror

FSANITIZE	=	-g -fsanitize=address

################################################################################
#####                            MAKEFILE RULES                            #####
################################################################################

all	: $(D_OBJS) $(LIBFT) $(NAME)

bonus : $(D_OBJS) $(LIBFT) $(NAME_B)

compiling_start_m :
	@python -c 'print u"\033[0;33m\u2192 " + "\033[0;33mCompiling \033[0;34m$(NAME)\033[0;33m sources..."'

compiling_end_m :
	@python -c 'print u"\033[0;32mCompiling successful \u2713 \033[0m"'

compiling_start_b :
	@python -c 'print u"\033[0;33m\u2192 " + "\033[0;33mCompiling \033[0;34m$(NAME)\033[0;33m bonus sources..."'

compiling_end_b :
	@python -c 'print u"\033[0;32mCompiling successful \u2713 \033[0m"'

$(D_OBJS) :
	@mkdir -p $@

$(LIBFT) :
	@make -C $(D_LIBFT)

$(D_OBJS)%.o : $(D_SRCS)%.c
	$(CC) $(FLAGS) -c $< -o $@ -Iincludes -Ilibft/includes

$(NAME) : compiling_start_m $(OBJS) compiling_end_m
	@python -c 'print u"\033[0;33m\u2192 " + "Linking objects for \033[0;34m$(NAME)\033[0;33m... \033[0m"'
	@$(CC) $(OBJS) -L$(D_LIBFT) -lft -o $(NAME)
	@python -c 'print u"\033[0;32mLinking successful \u2713 \033[0m"'

clean :
	@rm -rf $(D_OBJS)
	@make clean -C $(D_LIBFT)
	@python -c 'print u"\033[0;33mObjects deleted \u2713 \033[0m"'

fclean : clean
	@rm -rf $(D_LIBFT)$(LIBFT)
	@rm -rf $(NAME)
	@python -c 'print u"\033[0;34m$(LIBFT) \033[0;33mdeleted \u2713 \033[0m"'
	@python -c 'print u"\033[0;34m$(NAME) \033[0;33mdeleted \u2713 \033[0m"'

re : fclean all

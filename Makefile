NAME = so_long

LIBFTDIR = ./libft

MLXDIR = ./mlx

CC = cc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

SRC =	./srcs/main.c

OBJ = ${SRC:.c=.o}
INLIBFT = -L./libft -lft
INMLX = -L./mlx -lmlx -lmlx -L/usr/lib/X11 -lXext -lX11

.c.o:
	${CC} ${FLAGS} -Imlx -c $< -o $@

${NAME}: ${OBJ}
	@make -C $(LIBFTDIR)
	@make -C $(MLXDIR)
	${CC} ${OBJ} ${INLIBFT} ${INMLX} -o ${NAME}



all: ${NAME}

clean:
	${RM} ${OBJ}
	@cd $(LIBFTDIR) && $(MAKE) clean
	@cd $(MLXDIR) && $(MAKE) clean

fclean: clean
	${RM} ${NAME}
	@cd $(LIBFTDIR) && $(MAKE) fclean

re: fclean all

.PHONY: all clean fclean re

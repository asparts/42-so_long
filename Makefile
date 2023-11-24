# containts the X11 and MLX header files
INCLUDES = -I/usr/include -Imlx

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $< $(INCLUDES)

# link X11 and MLX
MLX_FLAGS = -Lmlx -lmlx -L/usr/lib/x11 -lXext -lX11

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS) $(MLX_FLAGS)

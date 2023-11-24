/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mnummi <mnummi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 03:18:41 by mnummi            #+#    #+#             */
/*   Updated: 2023/11/24 03:57:14 by mnummi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./../mlx/mlx.h"
#include <stdlib.h>

int	main(void)
{
	void	*mlx;
	void	*mlx_window;

	mlx = mlx_init();
	if (!mlx)
		return (1);
	mlx_window = mlx_new_window(mlx, 1920, 1080, "Hello World!");
	if (!mlx_window)
		return (free(mlx), 1);
	//mlx_loop();
	mlx_destroy_window(mlx, mlx_window);
	mlx_destroy_display(mlx);
	free(mlx);
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   woody.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pacda-si <pacda-si@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/27 18:22:10 by pacda-si          #+#    #+#             */
/*   Updated: 2025/07/27 18:45:05 by pacda-si         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/woody.h"
#include "../includes/colors.h"

void	parseFile(const char *file)
{
	syscall(SYS)
}

int	main(int ac, char **av)
{
	if (ac != 2)
	{
		dprintf(2, "\033[1;31mUsage : ./woody_woodpacker <64 bits ELF file>\n\033[0m");
		return (1);
	}
	parseFile(av[1]);
	// syscall(SYS_write, 1, "hello, world!\n", 14);
}
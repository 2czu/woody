/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   woody.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pacda-si <pacda-si@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/27 18:22:10 by pacda-si          #+#    #+#             */
/*   Updated: 2025/07/29 12:43:17 by pacda-si         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/woody.h"
#include "../includes/colors.h"

void	parseFile(const char *file)
{
	int		fd;
	char	buffer[5];

	fd = open(file, O_RDWR);
	if (fd < 0)
	{
		dprintf(2, "\033[1;31mFile couldn't be found.\n\033[0m");
		exit(1);
	}
	read(fd, buffer, 5);
	if (buffer[0] == 0x7F
			&& buffer[1] == 'E'
			&& buffer[2] == 'L'
			&& buffer[3] == 'F'
			&& buffer[4] == 2)
		return ;
	dprintf(2, "\033[1;31mFile isn't a 64 bits ELF file\n\033[0m");
	exit(1);
}

int	main(int ac, char **av)
{
	if (ac != 2)
	{
		dprintf(2, "\033[1;31mUsage : ./woody_woodpacker <64 bits ELF file>.\n\033[0m");
		return (1);
	}
	parseFile(av[1]);
	// syscall(SYS_write, 1, "hello, world!\n", 14);
}
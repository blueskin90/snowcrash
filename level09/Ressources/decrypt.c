#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

//i know, not safe, but it's a quick exploit so ...

int		main(int ac, char **av)
{
	char	buffer[26];	
	int		fd;
	int		i;

	fd = open(av[1], O_RDONLY);
	read(fd, buffer, 25);
	buffer[25] = 0;
	i = 0;
	while (i < 25)
	{
		printf("%c", buffer[i] - i);
		i++;
	}
	printf("\n");
	return (0);
}

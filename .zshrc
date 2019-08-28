function gcw()
{
	gcc -Wall -Werror -Wextra $@
}

function gcwlft()
{
	gcw -L./libft -lft
}

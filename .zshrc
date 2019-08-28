function gcw()
{
	gcc -Wall -Werror -Wextra $@
}

function gcwlft()
{
	gcw -L./libft -lft
}

function gtcl()
{
	git clone https://github.com/GarvielL0ken/$1
	cd $1:
}

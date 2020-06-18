alias venv_activ="source venv/bin/activate"

function venv_new()
{
	mkdir $1
	cd $1
	python3 -m venv venv
	venv_activ
}

function venv_new_flask()
{
	venv_new $1
	pip install flask
}

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
	cd $1
}

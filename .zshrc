alias cd_htdocs="cd /mnt/c/Bitnami/wampstack-7.3.13-0/apache2/htdocs/"
alias cd_saves="/mnt/c/Users/jedmi/AppData/Roaming/.minecraft/saves"
alias venv_act="source venv/bin/activate"

function venv_act_flask()
{
	venv_act
	export FLASK_APP=app.py
}

function venv_new()
{
	mkdir $1
	cd $1
	mkdir app
	touch app.py
	touch config.py
	cd app
	mkdir templates
	touch __init__.py
	touch forms.py
	touch routes.py
	cd ..
	python3 -m venv venv
	venv_act
}

function venv_new_flask()
{
	venv_new $1
	venv_act_flask
	pip install flask
	pip install flask-wtf
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

function app_server_start()
{
	sudo /etc/init.d/apache2 start
}

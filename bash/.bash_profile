# Alias
alias framework-startproject='git clone http://github.com/guilouro/boilerplate-framework-php.git . &&
git clone http://github.com/guilouro/FRAMEWORK-PHP.git FRAMEWORK/ && \
rm -rf .git && \
rm -rf README.md && \
rm -rf FRAMEWORK/.git && \
rm -rf FRAMEWORK/.gitignore && \
git init && \
git add . && \
git status && \
git commit -m "Init"'
alias myip='curl -s ip.dnsexit.com'

#-- Navegation
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"
alias home='cd ~'


#-- System
alias ld='ll | grep "^d"' ## List only directories
alias cl='clear'
alias celar='clear'
alias stree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias size='du -h --max-depth=1' ## Size paths
alias srcbash='source ~/.bashrc' ## Reload bash
alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;' ## Remove all files .pyc
alias deb='sudo dpkg -i '

#-- Django
alias manage='python `cat $VIRTUAL_ENV/.project`/manage.py'
alias mrs='manage runserver'
alias mk='manage makemigrations'
alias mm='manage migrate'
alias start-template='django-admin.py startproject --template https://github.com/guilouro/django-boilerplate/archive/master.zip' # Name # Local

# installs
alias git-gen-serv='git clone https://github.com/guilouro/git-gen-serv.git . && sh install'

#-- Geral
alias server='python -m SimpleHTTPServer'

#-- Clones
alias cl-grunt='git clone https://github.com/guilouro/grunt-workflow.git .'

# VirtualenvWrapper
if [ -e "/usr/local/bin/virtualenvwrapper.sh" ]; then
	export WORKON_HOME=~/.virtualenvs
	export PROJECT_HOME=~/PythonProjects
	export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
	source /usr/local/bin/virtualenvwrapper.sh
fi

source ~/.bash_prompt

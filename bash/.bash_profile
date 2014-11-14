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
alias cl='clear'
alias celar='clear'
alias stree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'

#-- Django
alias manage='python `cat $VIRTUAL_ENV/.project`/manage.py'


#-- Geral
alias server='python -m SimpleHTTPServer'

# VirtualenvWrapper
if [ -e "/usr/local/bin/virtualenvwrapper.sh" ]; then
	export WORKON_HOME=~/.virtualenvs
	export PROJECT_HOME=~/PythonProjects
	export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
	source /usr/local/bin/virtualenvwrapper.sh
fi

source ~/.bash_prompt

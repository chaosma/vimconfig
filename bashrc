# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

Cool="\342\236\244\040"
PS1="\[\e[0;36m\]\u\[\e[m\]@\[\e[0;33m\]\w\[\e[m\]\$(parse_git_branch)\n\[\e[0;36m\]$Cool\[\e[m\]"

HISTSIZE=10000
HISTFILESIZE=10000

alias ll="ls -lrth"
alias ls='ls --color=auto'


# python
#install virtualenv: python3 -m pip install --user virtualenv virtualenvwrapper 
# mkvirtualenv --system-site-packages cv3; workon cv3
PATH=$HOME/.local/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export WORKON_HOME=~/.virtualenvs

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export FZF_DEFAULT_OPS="--extended"

# LS_COLORS is used to define "ls" command colors for various file/directory types
# http://man7.org/linux/man-pages/man5/dir_colors.5.html for details
# add this line for light terminal color scheme
#LS_COLORS="di=0;47:ln=35;47:so=32;47:pi=33;47:ex=31;47:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
#alias ls='ls -G'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.deeper_bashrc


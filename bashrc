parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

Cool="\342\236\244\040"
PS1="\[\e[1;34m\]\u@\h\[\e[m\]:\[\e[0;33m\]\w\[\e[m\] \$(parse_git_branch)\n\[\e[0;36m\]$Cool\[\e[m\]"

HISTSIZE=10000
HISTFILESIZE=10000


# python
#install virtualenv: python3 -m pip install --user virtualenv virtualenvwrapper 
# mkvirtualenv --system-site-packages cv3; workon cv3
PATH=$HOME/.local/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export WORKON_HOME=~/.virtualenvs

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# rust
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.cargo/config"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"

source ~/.deeper_bashrc


# LS_COLORS is used to define "ls" command colors for various file/directory types
# http://man7.org/linux/man-pages/man5/dir_colors.5.html for details
# add this line for light terminal color scheme
#LS_COLORS="di=0;47:ln=35;47:so=32;47:pi=33;47:ex=31;47:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
#alias ls='ls -G'
alias ll="ls -lrth"
alias ls='ls --color=auto'

# git
function commit_replace() {
    if [[ $1 == "0" || $1"x" == "x" ]]; then
        echo "HEAD"
    else
        echo "HEAD~"$1
    fi
}

# gd: compare HEAD~ and HEAD
# gd $1: compare HEAD~ and HEAD on file $1
# gd $1 $2: compare HEAD~$2 and HEAD on file $1
function gd() {
  c1=$(commit_replace $2)
  c2=$(commit_replace $3)
  if [ -z "$2" ]
  then
     echo "compare": HEAD~ and HEAD
     git diff HEAD~ HEAD $1
  else
     echo "compare": $c1 and $c2
     git diff $c1 $c2 $1
  fi
}

function gdf() {
  c1=$(commit_replace $1)
  c2=$(commit_replace $2)
  git diff --name-only $c1 $c2
}

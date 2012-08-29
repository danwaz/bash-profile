# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#colors { white : folders, grey : files }
export CLICOLOR=1
export LSCOLORS=Hxhxhxhxhxhxhxhxhxhxhx

#alias for file nav
alias ll='ls -l'
alias la='ls -al'

#alias for git commands
alias gs='git status'
alias ga='git add .'
alias gu='git add -u'
alias gc='git commit -m'
alias gph='git push'
alias gpl='git pull'
alias gco='git checkout'

#alias for admin commands
alias apache='sudo apachectl restart'

#custom prompt courtesy of Jonathan Pettersson
parse_git_branch () {
	git branch 2>/dev/null|grep -e ^* | tr -d \*\;
}

get_rvm_info () {
	rvm-prompt v g 2> /dev/null
}

WHITE="\[\e[01;37m\]"
GREEN="\[\e[01;32m\]"
YELLOW="\[\e[01;93m\]"

PS1="$GREEN\$(echo 'danwaz ')$WHITE\$(get_rvm_info)$YELLOW\$(parse_git_branch)\[\e[00m\] \W: "

#z
. /bin/z.sh
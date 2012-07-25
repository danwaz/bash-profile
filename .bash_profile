PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#colors!
export CLICOLOR=1
export LSCOLORS=Hxhxhxhxhxhxhxhxhxhxhx

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
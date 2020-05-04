function col {
	awk -v col=$1 '{print $col}'
}

# function pa {
# 	case $1 in
# 		search)
# 			# apt-cache search $2
# 			pacaur -Ss $2
# 			;;
# 		show|info)
# 			pacaur -Si $2
# 			;;
# 		ins|install)
# 			shift && pacaur -S "$*"
# 			;;
# 		up)
# 			shift && pacaur -Syu --ignore puppet3 "$*"
# 			;;
# 		*)
# 			echo "ERR: Usage: pa search | show | ins | up"
# 			;;
# 	esac
# }

alias grep="grep --color"
alias view="vim -R"
alias st="git status"
alias pull="git pull"
alias pullf="git fetch -p && git pull"
alias pullr="git pull --rebase"
alias push="git push"

alias batl="/usr/bin/bat --theme 'Monokai Extended Light' --paging never --style 'plain'"
alias batd="/usr/bin/bat --theme 'TwoDark' --paging never --style 'plain'"
# alias bat="batl"
alias bat="batd"
alias batc="bat --style 'numbers,changes'"
alias batj="bat -l json"
alias baty="bat -l yaml"

alias k="kubectl --context=rtr-dev"
alias kp="kubectl --context=rtr-prod"
alias kpl="k8s-prod-login.sh"

#export EDITOR=vim
#
#export TODOTXT_DEFAULT_ACTION=ls
#alias t="todo.sh"
#source ~/src/git/todo.txt-cli/todo_completion
#complete -F _todo t
#
export HISTTIMEFORMAT="%F %T "
export HISTSIZE=5000

# UNDISTRACT=/usr/share/undistract-me/long-running.bash
# if [ -r ${UNDISTRACT} ];then
# 	[[ $- = *i* ]] && source ${UNDISTRACT} && notify_when_long_running_commands_finish_install
# else
# 	echo "Install undistract-me"
# fi

BASHMARKS=/usr/share/bashmarks/bashmarks.sh
if [ -r ${BASHMARKS} ];then
	[[ $- = *i* ]] && source ${BASHMARKS}
else
	echo "Install bashmarks"
fi

LPPATH=/usr/bin/liquidprompt
# LPPATH=/home/ps/git/liquidprompt/liquidprompt
if [ -r ${LPPATH} ];then
	[[ $- = *i* ]] && source ${LPPATH}
else
	echo "Install liquidprompt"
fi
# eval "$(starship init bash)"


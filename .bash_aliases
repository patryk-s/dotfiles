function col {
	awk -v col=$1 '{print $col}'
}

function pa {
	case $1 in
		search)
			# apt-cache search $2
			pacaur -Ss $2
			;;
		show|info)
			pacaur -Si $2
			;;
		ins|install)
			shift && pacaur -S $*
			;;
		up)
			pacaur -Syu
			;;
		*)
			echo "ERR: Usage: pa search | show | ins | up"
			;;
	esac
}

alias grep="grep --color"

#export EDITOR=vim
#
#export TODOTXT_DEFAULT_ACTION=ls
#alias t="todo.sh"
#source ~/src/git/todo.txt-cli/todo_completion
#complete -F _todo t
#
export HISTTIMEFORMAT="%F %T "
#
LPPATH=/usr/bin/liquidprompt
##LP_ENABLE_TIME=1
##LP_TIME_ANALOG=1
if [ -r ${LPPATH} ];then
	[[ $- = *i* ]] && source ${LPPATH}
fi


function col {
	awk -v col=$1 '{print $col}'
}

function pa {
	case $1 in
		search)
			apt-cache search $2
			;;
		show)
			apt-cache show $2
			;;
		ins|install)
			shift && sudo apt-get install --no-install-recommends $*
			;;
		up)
			sudo apt-get update
			sudo apt-get dist-upgrade
			;;
		*)
			echo "ERR: Usage: pa search | show | ins | up"
			;;
	esac
}

export EDITOR=vim

export TODOTXT_DEFAULT_ACTION=ls
alias t="todo.sh"
source ~/src/git/todo.txt-cli/todo_completion
complete -F _todo t

export HISTTIMEFORMAT="%F %T "

#LP_ENABLE_TIME=1
#LP_TIME_ANALOG=1
[[ $- = *i* ]] && source ~/src/git/liquidprompt/liquidprompt


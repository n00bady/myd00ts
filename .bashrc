#
# ~/.bashrc
#

# Shows it everytime you start a new terminal
cowfortune | lolcat
echo -e '\n'
ddate | lolcat
echo -e '\n'
echo -e 'curl wttr.in -For the weather.  |   todo -For your todo list.  |   use fuck and thefuck to correct the las command.  |   https://youtu.be/AQBh9soLSkI -LoFi hiphop chill. music  |   curl cheat.sh -For cheat-sheets and stuff.'
echo -e '\n'

### I have no idea what this is
[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}
###

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


eval $(thefuck --alias)

# My aliases
alias todo='sh /home/kazaboo/.local/bin/todo.sh'



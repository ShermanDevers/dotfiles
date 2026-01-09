#if uwsm check may-start && uwsm select; then
#	exec uwsm start default
#fi
stty werase ^H
PS1="\[\e[48;5;233m\]\h \u \w \\$\[\e[0m\] "
alias l="ls -CF" 
export PATH=$PATH:/home/sherman/.local/bin:/root/.local/bin/:/nix/store/zkb3lzaw6ms7hn5mzl7f5v1xls4nm4ip-python3.13-ulauncher-v6/bin/
eval "$(micromamba shell hook --shell bash)"
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi


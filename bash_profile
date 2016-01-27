export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
if (length($0) > 14) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF;
else if (NF>3) print $1 "/" $2 "/.../" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
#PS1='$(eval "echo ${MYPS}")$ '
export PS1='\[$(tput setaf 7)\]$(eval "echo ${MYPS}")$\[$(tput sgr0)\]'
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/bin:~/.composer/vendor/bin 

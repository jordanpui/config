alias df="df -h"
alias mac='ifconfig | grep HWaddr'
alias wget='wget -c'

alias apt-install='sudo apt-get install'
alias apt-search='apt-cache search'
alias apt-show='apt-cache show'
alias apt-purge='sudo apt-get --purge  remove'
alias apt-remove='sudo apt-get remove'
alias add-apt-repository="-E add-apt-repository"

alias projgw108="ssh -X -p 3208 projgw"
alias projgw109="ssh -X -p 3209 projgw"
alias projgw110="ssh -X -p 3210 projgw"
alias ll='ls -hl'
alias rm='rm -i'
alias la='ls -a'
alias vim='gvim'
alias sublm='/home/cwpui/Downloads/sublime_text_3/sublime_text'

alias m="cd ../src && make -j && cd ../bin"
alias mdb="cd ../src && make -Bj mode=debug && cd ../bin"
alias md="cd ../src && make -j mode=debug && cd ../bin"
alias mb="cd ../src && make -Bj && cd ../bin"
alias mc="cd ../src && make clean && cd ../bin"
alias r="reset" 
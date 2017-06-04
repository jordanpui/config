# This is needed for INVS debugging. Has to be the first line
if ( ${?DEBUG_SESSION} ) exit 0  

umask 022

#######################
# basic setup
#######################

# for cadence license.
setenv LM_LICENSE_FILE 27000@sjcflex1:5281@sjflex5:5281@sjflex4:5281@sjflex3
setenv CDS_LIC_FILE 5280@sjflex5:5280@sjflex4:5280@sjflex3

# P4 stuff
if ( ${?P4SITE} == 0) then
  setenv P4SITE sjc
  source /eng/tools/icd/bin/p4.cshrc
endif
setenv P4DIFF tkdiff

# path
#priority paths. they override default grid commands
set path = (/eng/tools/icd/bin /grid/sfi/farm/bin /grid/common/pkgs/perforce/latest/bin /grid/common/pkgsData/ccrtools) 

set path = ($path /grid/common/bin) #generic grid commands

set path = ($path /icd/rd/INNOVUS/INNOVUS161/latest.main.lnx86/bin) #invs

set path = ($path /grid/common/pkgs/forte/v12.4/sunstudio/bin /grid/common/pkgs/eclipse/v3.7.1/bin /grid/common/pkgs/python/v2.7.2/bin) # special tools

set path = ($path ~/bin) #assume you have linked nr/utils to ~/bin

set path = ($path /bin /usr/bin .) #put local system path at the end

# please customize to your liking
if ( $?prompt ) then
    set prompt = "`whoami`@`/bin/hostname`[\!]:"
    set history= ( 2000 "%h %W/%D %T %R\n" )
    set filec
    stty erase ''
endif

# for NR build. source the version that you want to build: .cshrc.nr152 ...
source /home/nanosrc/.cshrc.nr

if ( -e ~/.aliases) then
    source ~/.aliases
endif

#######################
# additional setup
#######################
alias df "df -h"
alias mac 'ifconfig | grep HWaddr'
alias wget 'wget -c'
alias ll 'ls -hl'
alias rm 'rm -i'
alias la 'ls -a'
alias vim 'gvim'
alias sublm '/home/cwpui/Downloads/sublime_text_3/sublime_text'

set autolist = ambiguous
set complete = enhance

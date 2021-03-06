INSTALL_DIR=~/Developer/utilities/macos
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"
export PATH=$PATH:$INSTALL_DIR/icdiff:$INSTALL_DIR:$JAVA_HOME/bin
export HADOOP_OPTS="-Djava.security.krb5.realm=-Djava.security.krb5.kdc="
# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"
# setting up appearence
export PS1="$C_CYAN\u$C_DEFAULT@$C_GREEN\h:\[\033[33;1m\]\w$C_DEFAULT\$ "
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
# list file in colorful and readable format
alias ls='ls -GFh'
# list ALL file in LONG format and HUMAN readable format
alias ll="ls -alh" 
# list a directory SUMMARY in HUMAN readable format
alias lld="du -sh"

# Load rbenv automatically by adding
eval "$(rbenv init -)"

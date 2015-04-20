# .profile
echo 1. BASH_PROFILE

#---------------------------------------
# DEFINE ALIAS
#---------------------------------------
if [ -f ~/.bash_alias ]; then
	source ~/.bash_alias
fi

# other alias files .bash_alias_WHATEVER
for file in .bash_alias_*
do
	echo "1.1 : Sourcing " $file
        source $file
done

#-----------------------------
# DEFINE TERMINAL COLORS
#-----------------------------
export CLICOLOR=1
#      LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS=bxcxDxDxBxegedabagaced

#The order of the attributes are as follows:
#1. directory
#2. symbolic link
#3. socket
#4. pipe
#5. executable
#6. block special
#7. character special
#8. executable with setuid bit set
#9. executable with setgid bit set
#10. directory writable to others, with sticky bit
#11. directory writable to others, without sticky bit

#---------------------------------------
# SET PROMPT
#---------------------------------------
# DEFAULT : PS1="\h:\W \u\$" ; EXPORT PS1
PS1="\h:\W \u:\!\$ " ; EXPORT PS1

#---------------------------------------
# UPDATE PATH FOR MYSQL
#---------------------------------------
export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH

#---------------------------------------
# CLEAR AND WELCOME
#---------------------------------------
clear
echo "--------------------------------------------------------------------------------"
echo Welcome to $HOSTNAME, $USER
echo "--------------------------------------------------------------------------------"

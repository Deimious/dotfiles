# ~/.bashrc
#
#     @@@@@@@    @@@@@@    @@@@@@   @@@  @@@  @@@@@@@    @@@@@@@  
#     @@@@@@@@  @@@@@@@@  @@@@@@@   @@@  @@@  @@@@@@@@  @@@@@@@@  
#     @@!  @@@  @@!  @@@  !@@       @@!  @@@  @@!  @@@  !@@       
#     !@   @!@  !@!  @!@  !@!       !@!  @!@  !@!  @!@  !@!       
#     @!@!@!@   @!@!@!@!  !!@@!!    @!@!@!@!  @!@!!@!   !@!       
#     !!!@!!!!  !!!@!!!!   !!@!!!   !!!@!!!!  !!@!@!    !!!       
#     !!:  !!!  !!:  !!!       !:!  !!:  !!!  !!: :!!   :!!       
#     :!:  !:!  :!:  !:!      !:!   :!:  !:!  :!:  !:!  :!:       
#      :: ::::  ::   :::  :::: ::   ::   :::  ::   :::   ::: :::  
#      :: : ::    :   : :  :: : :     :   : :   :   : :   :: :: :  
#

case $- in *i*) ;; *)	# Check for an interactive session. If not running interactively, don't do anything
     return;;
esac
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR
export CALCURSE_EDITOR=nvim	# Calcurse's Editor
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export ANDROID_SDK_ROOT=/home/baal/Android/Sdk

#
#     @@@  @@@ @@@  @@@@@@ @@@@@@@  @@@@@@  @@@@@@@  @@@ @@@
#     @@!  @@@ @@! !@@       @!!   @@!  @@@ @@!  @@@ @@! !@@
#     @!@!@!@! !!@  !@@!!    @!!   @!@  !@! @!@!!@!   !@!@!
#     !!:  !!! !!:     !:!   !!:   !!:  !!! !!: :!!    !!:
#      :   : : :   ::.: :     :     : :. :   :   : :   .:
#
HISTCONTROL=ignoreboth	# Don't put duplicate lines or lines starting with space in the history
HISTSIZE=1000			# History length
HISTFILESIZE=2000		# History length

#
#     @@@@@@  @@@@@@@  @@@@@@@ @@@  @@@@@@  @@@  @@@  @@@@@@ 
#     @@!  @@@ @@!  @@@   @!!   @@! @@!  @@@ @@!@!@@@ !@@     
#     @!@  !@! @!@@!@!    @!!   !!@ @!@  !@! @!@@!!@!  !@@!!  
#     !!:  !!! !!:        !!:   !!: !!:  !!! !!:  !!!     !:! 
#      : :. :   :          :    :    : :. :  ::    :  ::.: :  
#
shopt -s histappend		# Add to history instead of overriding it
shopt -s autocd		# cd with only the dir name
shopt -s checkwinsize	# Window size sanity check

#
#     @@@@@@@  @@@@@@  @@@       @@@@@@  @@@@@@@   @@@@@@ 
#     !@@      @@!  @@@ @@!      @@!  @@@ @@!  @@@ !@@     
#     !@!      @!@  !@! @!!      @!@  !@! @!@!!@!   !@@!!  
#     :!!      !!:  !!! !!:      !!:  !!! !!: :!!      !:! 
#      :: :: :  : :. :  : ::.: :  : :. :   :   : : ::.: :  
#
# Color support
if [ -x /usr/bin/dircolors  ]; then
     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
     alias ls='ls --color=auto'
fi

#
#     @@@@@@@  @@@@@@@   @@@@@@  @@@@@@@@@@  @@@@@@@  @@@@@@@ 
#     @@!  @@@ @@!  @@@ @@!  @@@ @@! @@! @@! @@!  @@@   @!!   
#     @!@@!@!  @!@!!@!  @!@  !@! @!! !!@ @!@ @!@@!@!    @!!   
#     !!:      !!: :!!  !!:  !!! !!:     !!: !!:        !!:   
#      :        :   : :  : :. :   :      :    :          :    
#
PROMPT(){
	EXIT_STATUS=$?
	[ $EXIT_STATUS != 0 ] && EXIT_STATUS_STR=" \[\033[38;5;7m\][\[$(tput sgr0)\]\[\033[38;5;9m\]$EXIT_STATUS\[$(tput sgr0)\]\[\033[38;5;7m\]]\[$(tput sgr0)\]"
		BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
		if [ ! $BRANCH == "" ]; then
			BRANCH_STR="[\[$(tput setaf 2)\] $BRANCH \[$(tput setaf 15)\]]"
		else
			BRANCH_STR=""
		fi
		PS1="\[$(tput setaf 4)\]┌─╼ \[$(tput setaf 15)\][ $(tput setaf 9)\w$(tput setaf 15) ]$BRANCH_STR\n\[$(tput setaf 4)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 4)\]└────╼\"; else echo \"\[$(tput setaf 4)\]└╼\"; fi) \[$(tput setaf 15)\]"

		unset EXIT_STATUS_STR
			unset EXIT_STATUS
			unset BRANCH_STR
			unset BRANCH
}
PROMPT_COMMAND=PROMPT
force_color_prompt=yes
trap 'echo -ne "\e[0m"' DEBUG

#
#     @@@@@@  @@@      @@@  @@@@@@   @@@@@@ 
#     @@!  @@@ @@!      @@! @@!  @@@ !@@     
#     @!@!@!@! @!!      !!@ @!@!@!@!  !@@!!  
#     !!:  !!! !!:      !!: !!:  !!!     !:! 
#      :   : : : ::.: : :    :   : : ::.: :  
#
if [ -f ~/.bash_aliases  ]; then
     . ~/.bash_aliases
fi

#
#     @@@@@@  @@@  @@@ @@@@@@@  @@@@@@            @@@@@@@  @@@@@@  @@@@@@@@@@  @@@@@@@  @@@      @@@@@@@@ @@@@@@@ @@@  @@@@@@  @@@  @@@ 
#     @@!  @@@ @@!  @@@   @!!   @@!  @@@          !@@      @@!  @@@ @@! @@! @@! @@!  @@@ @@!      @@!        @!!   @@! @@!  @@@ @@!@!@@@ 
#     @!@!@!@! @!@  !@!   @!!   @!@  !@! @!@!@!@! !@!      @!@  !@! @!! !!@ @!@ @!@@!@!  @!!      @!!!:!     @!!   !!@ @!@  !@! @!@@!!@! 
#     !!:  !!! !!:  !!!   !!:   !!:  !!!          :!!      !!:  !!! !!:     !!: !!:      !!:      !!:        !!:   !!: !!:  !!! !!:  !!! 
#      :   : :  :.:: :     :     : :. :            :: :: :  : :. :   :      :    :       : ::.: : : :: ::     :    :    : :. :  ::    :  
#
if ! shopt -oq posix; then
     if [ -f /usr/share/bash-completion/bash_completion  ]; then
		. /usr/share/bash-completion/bash_completion
     elif [ -f /etc/bash_completion  ]; then
		. /etc/bash_completion
     fi
fi

#
#     @@@@@@@  @@@@@@  @@@@@@@@@@  @@@@@@@@@@   @@@@@@  @@@  @@@ @@@@@@@   @@@@@@ 
#     !@@      @@!  @@@ @@! @@! @@! @@! @@! @@! @@!  @@@ @@!@!@@@ @@!  @@@ !@@     
#     !@!      @!@  !@! @!! !!@ @!@ @!! !!@ @!@ @!@!@!@! @!@@!!@! @!@  !@!  !@@!!  
#     :!!      !!:  !!! !!:     !!: !!:     !!: !!:  !!! !!:  !!! !!:  !!!     !:! 
#      :: :: :  : :. :   :      :    :      :    :   : : ::    :  :: :  :  ::.: :  
#
# Color man pages
man() {
     env \
     LESS_TERMCAP_mb=$(printf "\e[1;31m") \
     LESS_TERMCAP_md=$(printf "\e[1;31m") \
     LESS_TERMCAP_me=$(printf "\e[0m") \
     LESS_TERMCAP_se=$(printf "\e[0m") \
     LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
     LESS_TERMCAP_ue=$(printf "\e[0m") \
     LESS_TERMCAP_us=$(printf "\e[1;32m") \
     man "$@"
}

# easy archive extraction
extract() {
     if [ -f $1  ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1     ;;
			*.tar.gz)    tar xzf $1     ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar e $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xf $1      ;;
			*.tbz2)      tar xjf $1     ;;
			*.tgz)       tar xzf $1     ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
			*)			echo "'$1' cannot be extracted via extract()" ;;
		esac
     else
		echo "'$1' is not a valid file"
     fi
}







# SCHOOL STUFF
# set PATH so it includes geni software if it exists
if [ -d "/usr/local/bin/gcf/src" ] ; then
    PATH="/usr/local/bin/gcf/src:/usr/local/bin/gcf/examples:$PATH"
    export PYTHONPATH="/usr/local/bin/gcf/src:$PYTHONPATH" 
fi

alias omni='omni.py'
alias omni-configure='omni-configure.py'
alias readyToLogin='readyToLogin.py'
alias clear-passphrases='clear-passphrases.py'
alias stitcher='stitcher.py'
alias remote-execute='remote-execute.py'
alias addMemberToSliceAndSlivers='addMemberToSliceAndSlivers.py'

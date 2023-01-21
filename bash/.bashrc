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
force_color_prompt=yes
export PS1="\[\033[0;35m\]┌─╼ \[$(tput setaf 242)\][\[$(tput setaf 140)\w\]\[$(tput setaf 242)\]]\n\[\033[0;35m\]\$(echo \"\[\033[0;35m\]└────╼ λ\") \[$(tput setaf 242)\]"
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
# ls after a cd
cd() {
     builtin cd "$*" && ls
}
# easy archive extraction
extract () {
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
export PATH="$HOME/.bin:$PATH"

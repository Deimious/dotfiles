#
# ~/.bashrc
#

# Check for an interactive session
# If not running interactively, don't do anything
case $- in *i*) ;; *) 
     return;;
esac

alias rcdwm='sudo make clean install -C ~/.config/dwm/'
alias rcst='sudo make clean install -C ~/.config/st/'
alias rcslock='sudo make clean install -C ~/.config/slock/'
alias rcsls='sudo make clean install -C ~/.config/slstatus/'
alias br='xrandr --output eDP-1 --brightness'
alias brl='xrandr --output eDP-1 --brightness 0.3'
alias brm='xrandr --output eDP-1 --brightness 0.6'
alias brh='xrandr --output eDP-1 --brightness 0.8'
alias keeb='xmodmap ~/.Xmodmap'
alias conmen='sudo connman_dmenu'
alias piavpn='/opt/piavpn/bin/pia-client'
alias ssh4830='ssh -i ~/documents/cs4830/private-key.pem djbzf5@ec2-3-19-14-214.us-east-2.compute.amazonaws.com'
alias scim='sc-im'

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Add to history instead of overriding it
shopt -s histappend

# History lenght
HISTSIZE=1000
HISTFILESIZE=2000

# Window size sanity check
shopt -s checkwinsize

# User/root variables definition
if [ -z "${arch_chroot:-}"  ] && [ -r /etc/arch_chroot  ]; then
     arch_chroot=$(cat /etc/arch_chroot)
fi

# Colored XTERM promp
case "$TERM" in xterm-color)
     color_prompt=yes;;
esac

# Colored prompt
force_color_prompt=yes

if [ -n "$force_color_prompt"  ]; then
     if [ -x /usr/bin/tput  ] && tput setaf 1 >&/dev/null; then
	  color_prompt=yes
     else
	  color_prompt=
     fi
fi

# Prompt
if [ -n "$SSH_CONNECTION"  ]; then
     export PS1="┌─╼ \[$(tput setaf 7)\][\w]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0  ]]; then echo \"\[$(tput setaf 1)\]└────╼ \[$(tput setaf 7)\][ssh]\"; else echo \"\[$(tput setaf 1)\]└╼ \[$(tput setaf 7)\][ssh]\"; fi) \[$(tput setaf 7)\]"
else
     export PS1="\[\033[0;32m\]┌─╼ \[$(tput setaf 242)\][\[$(tput setaf 140)\w\]\[$(tput setaf 242)\]]\n\[\033[0;32m\]\$(if [[ \$? == 0  ]]; then echo \"\[\033[0;32m\]└────╼\"; else echo \"\[\033[0;32m\]└╼\"; fi) \[$(tput setaf 242)\]"
fi
trap 'echo -ne "\e[0m"' DEBUG

# I this is an xterm set the title to user@host:dir
case "$TERM" in xterm*|rxvt*)
     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u: \w\a\]$PS1" ;; *) ;;
esac

# Color support
if [ -x /usr/bin/dircolors  ]; then
     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
     alias ls='ls --color=auto'
fi

# Alias definitions.
if [ -f ~/.bash_aliases  ]; then
     . ~/.bash_aliases
fi

# Auto-completion 
if ! shopt -oq posix; then
     if [ -f /usr/share/bash-completion/bash_completion  ]; then
	  . /usr/share/bash-completion/bash_completion
     elif [ -f /etc/bash_completion  ]; then
	  . /etc/bash_completion
     fi
fi

# Advanced directory creation
function mkcd {
     if [ ! -n "$1"  ]; then
	  echo "Entrez un nom pour ce dossier"
     elif [ -d $1  ]; then
	  echo "\`$1' existe déjà"
     else
	  mkdir $1 && cd $1
     fi
}

# Go back with ..
b() {
     str=""
     count=0
     while [ "$count" -lt "$1"  ]; do
	  str=$str"../"
	  let count=count+1
     done
     cd $str
}

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

# Auto cd
shopt -s autocd

# ls after a cd
function cd()
{
     builtin cd "$*" && ls
}
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
	       *)	    echo "'$1' cannot be extracted via extract()" ;;
	  esac
     else
	  echo "'$1' is not a valid file"
     fi
}
#PS1='[\u@\h \W]\$ '

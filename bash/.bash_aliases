#
#
#
#   @@@@@@@    @@@@@@    @@@@@@   @@@  @@@      @@@@@@   @@@       @@@   @@@@@@    @@@@@@   @@@@@@@@   @@@@@@   
#   @@@@@@@@  @@@@@@@@  @@@@@@@   @@@  @@@     @@@@@@@@  @@@       @@@  @@@@@@@@  @@@@@@@   @@@@@@@@  @@@@@@@   
#   @@!  @@@  @@!  @@@  !@@       @@!  @@@     @@!  @@@  @@!       @@!  @@!  @@@  !@@       @@!       !@@       
#   !@   @!@  !@!  @!@  !@!       !@!  @!@     !@!  @!@  !@!       !@!  !@!  @!@  !@!       !@!       !@!       
#   @!@!@!@   @!@!@!@!  !!@@!!    @!@!@!@!     @!@!@!@!  @!!       !!@  @!@!@!@!  !!@@!!    @!!!:!    !!@@!!    
#   !!!@!!!!  !!!@!!!!   !!@!!!   !!!@!!!!     !!!@!!!!  !!!       !!!  !!!@!!!!   !!@!!!   !!!!!:     !!@!!!   
#   !!:  !!!  !!:  !!!       !:!  !!:  !!!     !!:  !!!  !!:       !!:  !!:  !!!       !:!  !!:            !:!  
#   :!:  !:!  :!:  !:!      !:!   :!:  !:!     :!:  !:!   :!:      :!:  :!:  !:!      !:!   :!:           !:!   
#    :: ::::  ::   :::  :::: ::   ::   :::     ::   :::   :: ::::   ::  ::   :::  :::: ::    :: ::::  :::: ::   
#   :: : ::    :   : :  :: : :     :   : :      :   : :  : :: : :  :     :   : :  :: : :    : :: ::   :: : :    
#
#
#

# shortcut for ranger
alias r='ranger'
# shortcut for ranger, allows staying in current dir when exiting with 'q'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias mounthdd='sudo mount -t ntfs /dev/sda1 ~/hdd'
alias dwmstatus='~/.scripts/dwmstatus &'
alias ls='exa -l --color=always --group-directories-first'
alias vim='nvim'

# shortcut for pia-vpn
alias piavpn='/opt/piavpn/bin/pia-client'

#shortcut for bitwarden-desktop
alias bw='bitwarden-desktop'

# recompile all the suckless stuff
alias rcdwm='sudo make clean install -C ~/.config/dwm/'
alias rcdmenu='sudo make clean install -C ~/.config/dmenu/'
alias rcst='sudo make clean install -C ~/.config/st/'
alias rcslock='sudo make clean install -C ~/.config/slock/'
alias rcsls='sudo make clean install -C ~/.config/slstatus/'
alias rcsurf='sudo make clean install -C ~/.config/surf/'

# brightness controls for laptop
alias br='xrandr --output eDP-1 --brightness'
alias brl='xrandr --output eDP-1 --brightness 0.3'
alias brm='xrandr --output eDP-1 --brightness 0.6'
alias brh='xrandr --output eDP-1 --brightness 0.8'

# keyboard custom layout swapper for external keyboards
alias keeb='xmodmap ~/.Xmodmap'

# networking
alias connman='sudo connman_dmenu'

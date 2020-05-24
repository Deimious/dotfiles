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

# shortcut for pia-vpn
alias piavpn='/opt/piavpn/bin/pia-client'

#shortcut for bitwarden-desktop
alias bw='bitwarden-desktop'

# make vim -> nvim seamless
alias vim='nvim'

# recompile all the suckless stuff
alias rcdwm='sudo make clean install -C ~/.config/dwm/'
alias rcdmenu='sudo make clean install -C ~/.config/dmenu/'
alias rcst='sudo make clean install -C ~/.config/st/'
alias rcslock='sudo make clean install -C ~/.config/slock/'
alias rcsls='sudo make clean install -C ~/.config/slstatus/'
alias rcsurf='sudo make clean install -C ~/.config/surf/'

# keyboard custom layout swapper for external keyboards
alias keeb='xmodmap ~/.Xmodmap'

# networking
alias connman='sudo connman_dmenu'

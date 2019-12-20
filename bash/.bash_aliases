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
alias r='ranger'
alias rcdwm='sudo make clean install -C ~/.config/dwm/'
alias rcdmenu='sudo make clean install -C ~/.config/dmenu/'
alias rcst='sudo make clean install -C ~/.config/st/'
alias rcslock='sudo make clean install -C ~/.config/slock/'
alias rcsls='sudo make clean install -C ~/.config/slstatus/'
alias rcsurf='sudo make clean install -C ~/.config/surf/'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias br='xrandr --output eDP-1 --brightness'
alias brl='xrandr --output eDP-1 --brightness 0.3'
alias brm='xrandr --output eDP-1 --brightness 0.6'
alias brh='xrandr --output eDP-1 --brightness 0.8'
alias keeb='xmodmap ~/.Xmodmap'
alias conmen='sudo connman_dmenu'
alias piavpn='/opt/piavpn/bin/pia-client'
alias ssh4830='ssh -i ~/documents/cs4830/private-key.pem djbzf5@ec2-3-19-14-214.us-east-2.compute.amazonaws.com'
alias scim='sc-im'
alias bw='bitwarden-desktop'


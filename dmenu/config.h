//                                                     
//     @@@@@@@   @@@@@@@@@@   @@@@@@@@  @@@  @@@  @@@  @@@
//     @@@@@@@@  @@@@@@@@@@@  @@@@@@@@  @@@@ @@@  @@@  @@@
//     @@!  @@@  @@! @@! @@!  @@!       @@!@!@@@  @@!  @@@
//     !@!  @!@  !@! !@! !@!  !@!       !@!!@!@!  !@!  @!@
//     @!@  !@!  @!! !!@ @!@  @!!!:!    @!@ !!@!  @!@  !@!
//     !@!  !!!  !@!   ! !@!  !!!!!:    !@!  !!!  !@!  !!!
//     !!:  !!!  !!:     !!:  !!:       !!:  !!!  !!:  !!!
//     :!:  !:!  :!:     :!:  :!:       :!:  !:!  :!:  !:!
//      :::: ::  :::     ::    :: ::::   ::   ::  ::::: ::
//      :: :  :    :      :    : :: ::   ::    :    : :  :
//

// See LICENSE file for copyright and license details.
// Default settings; can be overriden by command line.

static int instant						= 0;					// -i  option; if 1, dmenu auto-selects when 1 option remaining
static int topbar						= 1;					// -b  option; if 0, dmenu appears at bottom
static int centered						= 0;					// -c  option; centers dmenu on screen
static unsigned int lines				= 15;				// -l option; if nonzero, dmenu uses vertical list with given number of lines
static const unsigned int border_width		= 5;					// Size of the window border
static const char *prompt				= ">";				// -p  option; prompt to the left of input field
static const char worddelimiters[]			= " ";				// Characters not considered part of a word while deleting words; for example: " /?\"&[]"
static const char *fonts[]				= {"x0s4 Terminus:size=10"};	// -fn option; overrides fonts[0]; default X11 font or font set
static const char *colors[SchemeLast][2]	= {
	//				fg         bg
	[SchemeNorm]	= { "#bbbbbb", "#222222" },
	[SchemeSel]	= { "#eeeeee", "#005577" },
	[SchemeOut]	= { "#000000", "#00ffff" },
};



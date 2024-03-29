//                                      
//     @@@@@@@   @@@  @@@  @@@  @@@@@@@@@@   
//     @@@@@@@@  @@@  @@@  @@@  @@@@@@@@@@@  
//     @@!  @@@  @@!  @@!  @@!  @@! @@! @@!  
//     !@!  @!@  !@!  !@!  !@!  !@! !@! !@!  
//     @!@  !@!  @!!  !!@  @!@  @!! !!@ @!@  
//     !@!  !!!  !@!  !!!  !@!  !@!   ! !@!  
//     !!:  !!!  !!:  !!:  !!:  !!:     !!:  
//     :!:  !:!  :!:  :!:  :!:  :!:     :!:  
//     :::: ::   :::: :: :::    :::     ::   
//     :: :  :     :: :  : :     :      :    
//

//
//     @@@@@@  @@@@@@@  @@@@@@@ @@@  @@@@@@  @@@  @@@  @@@@@@ 
//     @@!  @@@ @@!  @@@   @!!   @@! @@!  @@@ @@!@!@@@ !@@     
//     @!@  !@! @!@@!@!    @!!   !!@ @!@  !@! @!@@!!@!  !@@!!  
//     !!:  !!! !!:        !!:   !!: !!:  !!! !!:  !!!     !:! 
//       : :. :   :          :    :    : :. :  ::    :  ::.: :  
//
#include "movestack.c"
static const unsigned int borderpx		= 5;		// border pixel of windows
static const unsigned int gappx		= 20;	// gaps between windows
static const unsigned int snap		= 32;	// snap pixel
static const int showbar				= 1;		// 0 means no bar
static const int topbar				= 1;		// 0 means bottom bar
//
//     @@@@@@@@  @@@@@@  @@@  @@@ @@@@@@@  @@@@@@ 
//     @@!      @@!  @@@ @@!@!@@@   @!!   !@@     
//     @!!!:!   @!@  !@! @!@@!!@!   @!!    !@@!!  
//     !!:      !!:  !!! !!:  !!!   !!:       !:! 
//      :        : :. :  ::    :     :    ::.: :  
//
static const char *fonts[]			= { "xos4 Terminess Powerline:size=14:antialias=true" };
static const char dmenufont[]			= "xos4 Terminess Powerline:size=14:antialias=true";
//
//     @@@@@@@  @@@@@@  @@@       @@@@@@  @@@@@@@   @@@@@@ 
//     !@@      @@!  @@@ @@!      @@!  @@@ @@!  @@@ !@@     
//     !@!      @!@  !@! @!!      @!@  !@! @!@!!@!   !@@!!  
//     :!!      !!:  !!! !!:      !!:  !!! !!: :!!      !:! 
//      :: :: :  : :. :  : ::.: :  : :. :   :   : : ::.: :  
//
static const char bg[]				= "#121212";
static const char fg[]				= "#6c6c6c";
static const char black[]			= "#222";
static const char red[]				= "#733";
static const char green[]			= "#474";
static const char yellow[]			= "#993";
static const char blue[]				= "#447";
static const char magenta[]			= "#547";
static const char cyan[]				= "#488";
static const char gray[]				= "#555";
static const char white[]			= "#aaa";
static const char border[]			= "#547";
//colorschemes
static const char *colors[][3]		= {
     //					    fg		bg	       border 
     [SchemeNorm]			= { fg,		bg,	       bg		},
     [SchemeSel]			= { bg,		magenta,	  magenta	},
     [SchemeWarn]			= { magenta,	bg,	       white	},
     [SchemeUrgent]			= { white,	red,	       red	},
};
//
//     @@@@@@@  @@@@@@   @@@@@@@   @@@@@@ 
//       @!!   @@!  @@@ !@@       !@@     
//       @!!   @!@!@!@! !@! @!@!@  !@@!!  
//       !!:   !!:  !!! :!!   !!:     !:! 
//        :     :   : :  :: :: :  ::.: :  
//                                  
static const char *tags[] 			= { 
     "一", "二", "三", "四", "五", "六", "七", "八", "九"
};
//
//     @@@  @@@  @@@ @@@ @@@  @@@ @@@@@@@   @@@@@@  @@@  @@@  @@@  @@@@@@ 
//     @@!  @@!  @@! @@! @@!@!@@@ @@!  @@@ @@!  @@@ @@!  @@!  @@! !@@     
//     @!!  !!@  @!@ !!@ @!@@!!@! @!@  !@! @!@  !@! @!!  !!@  @!@  !@@!!  
//      !:  !!:  !!  !!: !!:  !!! !!:  !!! !!:  !!!  !:  !!:  !!      !:! 
//       ::.:  :::   :   ::    :  :: :  :   : :. :    ::.:  :::   ::.: :  
//
static const Rule rules[]			= {
     // class	    instance	title	     tags mask	    isfloating     isterminal	    noswallow	   monitor
     { "Gimp",	    NULL,		NULL,	     0,		    1,		   0,		    0,		   -1 },
     { "Firefox",  NULL,		NULL,	     1 << 8,	    0,		   0,		    0,		   -1 },
     { "st",	    NULL,		NULL,	     0,		    0,		   1,		    1,		   -1 },
     { "mpv",	    NULL,		NULL,	     0,		    1,		   0,		    0,		   -1 },
};
//window settings
static const float mfact				= 0.50;	// factor of master area size [0.05..0.95]
static const int nmaster				= 1;		// number of clients in master area
static const int resizehints			= 1;		// 1 means respect size hints in tiled resizals
static const Bool viewontag			= True;	// Switch view on tag switch
//tiling layouts
static const Layout layouts[]			= {
				// symbol		arrange function 
				{ "[ 瓦 ]",    tile },	   //The first entry is the default layout
				{ "[ヌル]",    NULL },	   //NULL layout is floating
				{ "[極度]",    monocle },   //Fullscreen layout
				{ "[ 盤 ]",    magicgrid }, //Great auto-balancing grid
				{ "[甲板]",	deck },	   //Stack becomes monocle while master remains normal
};
// 
//      @@@@@@@  @@@@@@  @@@@@@@@@@  @@@@@@@@@@   @@@@@@  @@@  @@@ @@@@@@@   @@@@@@ 
//     !@@      @@!  @@@ @@! @@! @@! @@! @@! @@! @@!  @@@ @@!@!@@@ @@!  @@@ !@@     
//     !@!      @!@  !@! @!! !!@ @!@ @!! !!@ @!@ @!@!@!@! @!@@!!@! @!@  !@!  !@@!!  
//     :!!      !!:  !!! !!:     !!: !!:     !!: !!:  !!! !!:  !!! !!:  !!!     !:! 
//      :: :: :  : :. :   :      :    :      :    :   : : ::    :  :: :  :  ::.: :  
//
// helper for spawning shell commands in the pre dwm-5.0 fashion
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }
// commands
static char dmenumon[2] 				= "0"; /* component of dmenucmd, manipulated in spawn() */
static const char pactlsink[]			= "alsa_output.pci-0000_24_00.0.analog-stereo";
static const char *dmenucmd[] 		= { "dmenu_run_history", "-m", dmenumon, "-fn", dmenufont, "-n", "-p", ">", "-c", "-l", "15", "-nb", bg, "-nf", fg, "-sb", magenta, "-sf", bg, NULL };
static const char *termcmd[]  		= { "st", NULL };
static const char scratchpadname[] 	= "scratch";
static const char *scratchpadcmd[] 	= { "st", "-t", scratchpadname, "-g", "120x34", NULL  };
static const char *mutecmd[]			= { "pactl", "set-sink-mute", pactlsink, "toggle", NULL };
static const char *volupcmd[]			= { "pactl", "set-sink-volume", pactlsink, "+5%", NULL };
static const char *voldowncmd[]		= { "pactl", "set-sink-volume", pactlsink, "-5%", NULL };
static const char *playpausecmd[]		= { "playerctl", "play-pause", NULL };
static const char *medianextcmd[]		= { "playerctl", "next", NULL };
static const char *mediaprevcmd[]		= { "playerctl", "previous", NULL };
static const char *scrotcmd[]			= { "flameshot", "gui", NULL };
static const char *lockcmd[]			= { "xautolock", "-locknow", NULL };

//                                                                 
//     @@@  @@@ @@@@@@@@ @@@ @@@ @@@@@@@  @@@ @@@  @@@ @@@@@@@   @@@@@@ 
//     @@!  !@@ @@!      @@! !@@ @@!  @@@ @@! @@!@!@@@ @@!  @@@ !@@     
//     @!@@!@!  @!!!:!    !@!@!  @!@!@!@  !!@ @!@@!!@! @!@  !@!  !@@!!  
//     !!: :!!  !!:        !!:   !!:  !!! !!: !!:  !!! !!:  !!!     !:! 
//      :   ::: : :: ::    .:    :: : ::  :   ::    :  :: :  :  ::.: :  
//
// key definitions
#include <X11/XF86keysym.h>
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
// keybinds
static Key keys[] = {
	/*modifier					key					function		   	argument */
	{ MODKEY,						XK_d,	  			spawn,	      	{.v = dmenucmd} },
	{ MODKEY,						XK_Return,			spawn,	      	{.v = termcmd } },
	{ MODKEY,                     	XK_m,	  			togglebar,	     { 0 } },
	{ MODKEY,                     	XK_j,	  			focusstack,	     {.i = +1 } },
	{ MODKEY,                     	XK_k,	  			focusstack,	     {.i = -1 } },
	{ MODKEY|ControlMask,         	XK_k,	  			incnmaster,	     {.i = +1 } },
	{ MODKEY|ControlMask,         	XK_j,	  			incnmaster,	     {.i = -1 } },
	{ MODKEY,                     	XK_h,	  			setmfact,	      	{.f = -0.05} },
	{ MODKEY,                     	XK_l,	  			setmfact,	      	{.f = +0.05} },
	{ MODKEY|ControlMask,              XK_l,	  			spawn,	      	{.v = lockcmd} },
	{ MODKEY|ShiftMask,           	XK_j,	  			movestack,	     {.i = +1 } },
	{ MODKEY|ShiftMask,           	XK_k,	  			movestack,	     {.i = -1 } },
	{ MODKEY|ShiftMask,				XK_f,				fullscreen,		{0} },
	{ MODKEY,                     	XK_Tab,	  			zoom,		     { 0 } },
//	{ MODKEY,                     	XK_Tab,	  			view,		     { 0 } },
	{ MODKEY,						XK_q,	  			killclient,	     { 0 } },
	{ MODKEY,                     	XK_t,	  			setlayout,	     {.v = &layouts[0]} },
//	{ MODKEY,                     	XK_f,	  			setlayout,	     {.v = &layouts[1]} },
	{ MODKEY,                     	XK_f,	  			setlayout,	     {.v = &layouts[2]} },
	{ MODKEY,                     	XK_g,	  			setlayout,	     {.v = &layouts[3]} },
	{ MODKEY|ShiftMask,           	XK_t,	  			setlayout,	     {.v = &layouts[4]} },
	{ MODKEY|ShiftMask,           	XK_s,	  			spawn,			{.v = scrotcmd} },
	/* { MODKEY,                     	XK_space,				setlayout,	     { 0 } }, */ 
	{ MODKEY,                     	XK_space,				spawn,	      	{.v = termcmd } },
	{ MODKEY|ShiftMask,           	XK_space,				togglefloating,     { 0 } },
	{ MODKEY,                     	XK_0,	  			view,		     {.ui = ~0 } },
	{ MODKEY|ShiftMask,           	XK_0,	  			tag,		      	{.ui = ~0 } },
	{ MODKEY,                     	XK_comma,				focusmon,	      	{.i = -1 } },
	{ MODKEY,                     	XK_period,			focusmon,	      	{.i = +1 } },
	{ MODKEY|ShiftMask,           	XK_comma,				tagmon,	      	{.i = -1 } },
	{ MODKEY|ShiftMask,           	XK_period,			tagmon,	      	{.i = +1 } },
	{ MODKEY,                     	XK_semicolon,  		togglescratch,      {.v = scratchpadcmd } },
	{ MODKEY,						XK_Left,				viewtoleft,		{0} },
	{ MODKEY,						XK_Right,				viewtoright,		{0} },
	{ MODKEY|ShiftMask,				XK_Left,				tagtoleft,		{0} },
	{ MODKEY|ShiftMask,				XK_Right,				tagtoright,		{0} },
	{ MODKEY|ShiftMask,           	XK_q,	  			quit,		     { 0 }},
	{ MODKEY|ShiftMask,           	XK_h,	  			setcfact,	      	{.f = +0.25} },
	{ MODKEY|ShiftMask,           	XK_l,	  			setcfact,	      	{.f = -0.25} },
	{ MODKEY|ShiftMask,           	XK_o,	  			setcfact,	      	{.f =  0.00} },
	{ MODKEY,						XK_bracketleft,		shiftview,	     {.i =  -1} },
	{ MODKEY,						XK_bracketright,		shiftview,	     {.i =  +1} },
	/* { MODKEY,						XK_p,				shiftview,	     {.i =  -1} }, */
	/* { MODKEY,						XK_BackSpace,			shiftview,	     {.i =  +1} }, */
	{ 0,							XF86XK_AudioMute,		spawn,	      	{.v = mutecmd } },
	{ 0,           				XF86XK_AudioLowerVolume, spawn,	      	{.v = voldowncmd } },
	{ 0,           				XF86XK_AudioRaiseVolume, spawn,	      	{.v = volupcmd } },
	{ 0,           				XF86XK_AudioPlay,		spawn,	      	{.v = playpausecmd } },
	{ 0,           				XF86XK_AudioNext,		spawn,	      	{.v = medianextcmd } },
	{ 0,           				XF86XK_AudioPrev, 		spawn,	      	{.v = mediaprevcmd } },
//	TAGS
	TAGKEYS(                      	XK_1,				0)
	TAGKEYS(                      	XK_2,	     		1)
	TAGKEYS(                      	XK_3,	     		2)
     TAGKEYS(                      	XK_4,				3)
     TAGKEYS(                      	XK_5,	     		4)
     TAGKEYS(                      	XK_6,	     		5)
     TAGKEYS(                      	XK_7,	     		6)
     TAGKEYS(                      	XK_8,	     		7)
     TAGKEYS(                      	XK_9,	     		8)
};

// button definitions
// click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin
static Button buttons[] = {
//	click			   			event mask      button	      	function		       	argument
     { ClkLtSymbol,		   			0,              Button1,	      	setlayout,	       	{ 0 } },
     { ClkLtSymbol,		   			0,              Button3,	      	setlayout,	       	{.v = &layouts[2]} },
     { ClkWinTitle,		   			0,              Button2,	      	zoom,		       	{ 0 } },
     { ClkStatusText,		   		0,              Button2,	      	spawn,		       	{.v = termcmd } },
     { ClkClientWin,		   		MODKEY,         Button1,	      	movemouse,	       	{ 0 } },
     { ClkClientWin,		   		MODKEY,         Button2,	      	togglefloating,	  	{ 0 } },
     { ClkClientWin,		   		MODKEY,         Button3,	      	resizemouse,	       	{ 0 } },
     { ClkTagBar,		   			0,              Button1,	      	view,		       	{ 0 } },
     { ClkTagBar,		   			0,              Button3,	      	toggleview,	       	{ 0 } },
     { ClkTagBar,		   			MODKEY,         Button1,	      	tag,		       		{ 0 } },
     { ClkTagBar,		   			MODKEY,         Button3,	      	toggletag,	       	{ 0 } },
};


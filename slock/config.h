/* user and group to drop privileges to */
static const char *user  = "baal";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#121212",     /* after initialization */
	[INPUT] =  "#486348",   /* during input */
	[FAILED] = "#634848",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "enter password";

/* text color */
static const char * text_color = "#c6c6c6";

/* text size (must be a valid size) */
static const char * text_size = "6x10";

/* time to cancel lock with mouse movement in seconds */
static const int timetocancel = 5;

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_mess		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajmess.h: automatically generated


void
ajMessCrashCodeFL (code)
       const char *code

void
ajMessErrorInit (progname)
       const char *progname

void
ajMessBeep ()

AjBool
ajMessErrorSetFile (errfile)
       const char *errfile
    OUTPUT:
       RETVAL

void
ajMessCodesDelete ()

void
ajMessOutCode (name)
       const char *name

void
ajMessErrorCode (name)
       const char *name

void
ajMessExit ()

void
ajMessSetErr (filename, line_num)
       const char *filename
       ajint line_num

FILE*
ajDebugFile ()
    OUTPUT:
       RETVAL




AjBool
ajMessPrompt (prompt, dfault, fmt)
       const char *prompt
       const char *dfault
       const char *fmt
    OUTPUT:
       RETVAL

char*
ajMessSysErrorText ()
    OUTPUT:
       RETVAL

ajint
ajMessErrorCount ()
    OUTPUT:
       RETVAL


char*
ajMessCaughtMessage ()
    OUTPUT:
       RETVAL


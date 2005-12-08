#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_mem		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajmem.h: automatically generated

void *
ajMemAlloc (nbytes, file, line, nofail)
       ajlong nbytes
       const char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void *
ajMemCalloc (count, nbytes, file, line, nofail)
       ajlong count
       ajlong nbytes
       const char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void *
ajMemCalloc0 (count, nbytes, file, line, nofail)
       ajlong count
       ajlong nbytes
       const char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void
ajMemFree (ptr, file, line)
       char *ptr
       const char *file
       ajint line

void *
ajMemResize (ptr, nbytes, file, line, nofail)
       char *ptr
       ajlong nbytes
       const char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL


void
ajMemStat (title)
       const char* title

void
ajMemExit ()


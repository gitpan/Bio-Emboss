#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_mem		PACKAGE = Bio::Emboss		

 # code from ajmem.h: automatically generated

#ifdef HAVE_EMBOSS_2_9_0

void *
ajMemAlloc (nbytes, file, line, nofail)
       ajlong nbytes
       char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void *
ajMemCalloc (count, nbytes, file, line, nofail)
       ajlong count
       ajlong nbytes
       char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void *
ajMemCalloc0 (count, nbytes, file, line, nofail)
       ajlong count
       ajlong nbytes
       char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

void *
ajMemResize (ptr, nbytes, file, line, nofail)
       char *ptr
       ajlong nbytes
       char *file
       ajint line
       AjBool nofail
    OUTPUT:
       RETVAL

#else

void *
ajMemAlloc (nbytes, file, line)
       ajlong nbytes
       char *file
       ajint line
    OUTPUT:
       RETVAL

void *
ajMemCalloc (count, nbytes, file, line)
       ajlong count
       ajlong nbytes
       char *file
       ajint line
    OUTPUT:
       RETVAL

void *
ajMemCalloc0 (count, nbytes, file, line)
       ajlong count
       ajlong nbytes
       char *file
       ajint line
    OUTPUT:
       RETVAL

void *
ajMemResize (ptr, nbytes, file, line)
       char *ptr
       ajlong nbytes
       char *file
       ajint line
    OUTPUT:
       RETVAL

#endif

void
ajMemFree (ptr, file, line)
       char *ptr
       char *file
       ajint line

void
ajMemStat (title)
       char* title

void
ajMemExit ()


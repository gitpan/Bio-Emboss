#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_mem		PACKAGE = Bio::Emboss		

 # code from ajmem.h: automatically generated

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

void
ajMemFree (ptr, file, line)
       char *ptr
       char *file
       ajint line

void *
ajMemResize (ptr, nbytes, file, line)
       char *ptr
       ajlong nbytes
       char *file
       ajint line
    OUTPUT:
       RETVAL

void
ajMemStat (title)
       char* title

void
ajMemExit ()


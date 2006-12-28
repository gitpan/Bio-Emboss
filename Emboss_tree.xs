#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_tree		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajtree.c: automatically generated

AjPTree
ajTreeNew ()
    OUTPUT:
       RETVAL

AjPTree
ajTreestrNew ()
    OUTPUT:
       RETVAL

AjPTree
ajTreestrCopy (thys)
       const AjPTree thys
    OUTPUT:
       RETVAL

AjPTree
ajTreeCopy (thys)
       const AjPTree thys
    OUTPUT:
       RETVAL

ajint
ajTreeLength (thys)
       const AjPTree thys
    OUTPUT:
       RETVAL

ajint
ajTreestrLength (thys)
       const AjPTree thys
    OUTPUT:
       RETVAL

void
ajTreeFree (pthis)
       AjPTree& pthis
    OUTPUT:
       pthis

void
ajTreestrFree (pthis)
       AjPTree& pthis
    OUTPUT:
       pthis

void
ajTreeDel (pthis)
       AjPTree& pthis
    OUTPUT:
       pthis

void
ajTreestrDel (pthis)
       AjPTree& pthis
    OUTPUT:
       pthis

ajint
ajTreeToArray (thys, array)
       const AjPTree thys
       void**& array
    OUTPUT:
       RETVAL
       array

ajint
ajTreestrToArray (thys, array)
       const AjPTree thys
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

void
ajTreeDummyFunction ()

AjBool
ajTreeAddData (thys, data)
       AjPTree thys
       char* data
    OUTPUT:
       RETVAL

AjPTree
ajTreeAddNode (thys)
       AjPTree thys
    OUTPUT:
       RETVAL

AjPTree
ajTreeAddSubNode (thys)
       AjPTree thys
    OUTPUT:
       RETVAL

void
ajTreeTrace (thys)
       const AjPTree thys

void
ajTreeExit ()


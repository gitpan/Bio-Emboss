#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_tree		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajtree.h: automatically generated

AjBool
ajTreeAddData (thys, data)
       AjPTree  thys
       char * data
    OUTPUT:
       RETVAL

AjPTree
ajTreeAddNode (thys)
       AjPTree  thys
    OUTPUT:
       RETVAL

AjPTree
ajTreeAddSubNode (thys)
       AjPTree  thys
    OUTPUT:
       RETVAL

AjPTree
ajTreeCopy (thys)
       const AjPTree  thys
    OUTPUT:
       RETVAL

void
ajTreeDel (pthis)
       AjPTree & pthis
    OUTPUT:
       pthis

void
ajTreeExit ()

void
ajTreeFree (pthis)
       AjPTree & pthis
    OUTPUT:
       pthis


ajint
ajTreeLength (thys)
       const AjPTree  thys
    OUTPUT:
       RETVAL


AjPTree
ajTreeNew ()
    OUTPUT:
       RETVAL

AjPTree
ajTreestrCopy (thys)
       const AjPTree  thys
    OUTPUT:
       RETVAL

void
ajTreestrDel (pthis)
       AjPTree & pthis
    OUTPUT:
       pthis

void
ajTreestrFree (pthis)
       AjPTree & pthis
    OUTPUT:
       pthis


AjPTree
ajTreestrNew ()
    OUTPUT:
       RETVAL

ajint
ajTreestrToArray (thys, array)
       const AjPTree  thys
       AjPStr*& array
    OUTPUT:
       RETVAL
       array


void
ajTreeTrace (thys)
       const AjPTree  thys

void
ajTreeDummyFunction ()


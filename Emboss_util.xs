#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_util		PACKAGE = Bio::Emboss		

 # code from ajutil.h: automatically generated

void
ajExit ()

ajint
ajExitBad ()
    OUTPUT:
       RETVAL

void
ajLogInfo ()

AjBool
ajUtilBigendian ()
    OUTPUT:
       RETVAL

void
ajUtilCatch ()

void
ajUtilRev2 (i)
       short& i
    OUTPUT:
       i

void
ajUtilRev4 (i)
       ajint& i
    OUTPUT:
       i

void
ajUtilRev8 (i)
       ajlong& i
    OUTPUT:
       i

AjBool
ajUtilUid (dest)
       AjPStr& dest
    OUTPUT:
       RETVAL
       dest


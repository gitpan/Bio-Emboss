#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_util		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajutil.h: automatically generated

void
ajExit ()

ajint
ajExitAbort ()
    OUTPUT:
       RETVAL

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

void
ajUtilRevInt (sval)
       ajint& sval
    OUTPUT:
       sval

void
ajUtilRevShort (ival)
       short& ival
    OUTPUT:
       ival

void
ajUtilRevLong (lval)
       ajlong& lval
    OUTPUT:
       lval

AjBool
ajUtilUid (dest)
       AjPStr& dest
    OUTPUT:
       RETVAL
       dest


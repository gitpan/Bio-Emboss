#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_util		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajutil.c: automatically generated

void
ajExit ()

void
ajExitBad ()

void
ajExitAbort ()

void
ajLogInfo ()

AjBool
ajUtilUid (dest)
       AjPStr& dest
    OUTPUT:
       RETVAL
       dest

AjBool
ajUtilBigendian ()
    OUTPUT:
       RETVAL

void
ajUtilRev2 (sval)
       short& sval

void
ajUtilRev4 (ival)
       ajint& ival

void
ajUtilRev8 (ival)
       ajlong& ival

void
ajUtilRevShort (sval)
       short& sval

void
ajUtilRevInt (ival)
       ajint& ival

void
ajUtilRevLong (lval)
       ajlong& lval

void
ajUtilCatch ()

void
ajUtilRevUint (ival)
       ajuint& ival


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
ajUtilCatch ()

void
ajReset ()

void
ajByteRevInt (ival)
       ajint& ival

void
ajByteRevLen2 (sval)
       short& sval

void
ajByteRevLen4 (ival)
       ajint& ival

void
ajByteRevLen8 (lval)
       ajlong& lval

void
ajByteRevLong (lval)
       ajlong& lval

void
ajByteRevShort (sval)
       short& sval

void
ajByteRevUint (ival)
       ajuint& ival

AjBool
ajUtilGetBigendian ()
    OUTPUT:
       RETVAL

AjBool
ajUtilGetUid (Puid)
       AjPStr& Puid
    OUTPUT:
       RETVAL
       Puid

void
ajUtilLoginfo ()


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_acd		PACKAGE = Bio::Emboss		

 # code from ajacd.h: automatically generated

AjBool
ajAcdDebug ()
    OUTPUT:
       RETVAL

AjBool
ajAcdDebugIsSet ()
    OUTPUT:
       RETVAL

void
ajAcdExit (single)
       AjBool single

AjBool
ajAcdFilter ()
    OUTPUT:
       RETVAL

AjPAlign
ajAcdGetAlign (token)
       char *token
    OUTPUT:
       RETVAL

AjPFloat
ajAcdGetArray (token)
       char *token
    OUTPUT:
       RETVAL

AjBool
ajAcdGetBool (token)
       char *token
    OUTPUT:
       RETVAL

AjPCod
ajAcdGetCodon (token)
       char *token
    OUTPUT:
       RETVAL

AjPFile
ajAcdGetDatafile (token)
       char *token
    OUTPUT:
       RETVAL

AjPList
ajAcdGetDirlist (token)
       char *token
    OUTPUT:
       RETVAL

AjPFeattable
ajAcdGetFeat (token)
       char *token
    OUTPUT:
       RETVAL

AjPFeattabOut
ajAcdGetFeatout (token)
       char *token
    OUTPUT:
       RETVAL

AjPList
ajAcdGetFilelist (token)
       char *token
    OUTPUT:
       RETVAL

float
ajAcdGetFloat (token)
       char *token
    OUTPUT:
       RETVAL

AjPGraph
ajAcdGetGraph (token)
       char *token
    OUTPUT:
       RETVAL

AjPGraph
ajAcdGetGraphxy (token)
       char *token
    OUTPUT:
       RETVAL

AjPFile
ajAcdGetInfile (token)
       char *token
    OUTPUT:
       RETVAL

ajint
ajAcdGetInt (token)
       char *token
    OUTPUT:
       RETVAL

AjPStr*
ajAcdGetList (token)
       char *token
    OUTPUT:
       RETVAL

AjPStr
ajAcdGetListI (token, num)
       char *token
       ajint num
    OUTPUT:
       RETVAL

AjPMatrix
ajAcdGetMatrix (token)
       char *token
    OUTPUT:
       RETVAL

AjPMatrixf
ajAcdGetMatrixf (token)
       char *token
    OUTPUT:
       RETVAL

AjPFile
ajAcdGetOutfile (token)
       char *token
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_9_0

AjPFile
ajAcdGetCpdb (token)
       char *token
    OUTPUT:
       RETVAL

#else

AjPPdb
ajAcdGetCpdb (token)
       char *token
    OUTPUT:
       RETVAL

#endif

AjPRange
ajAcdGetRange (token)
       char *token
    OUTPUT:
       RETVAL

AjPRegexp
ajAcdGetRegexp (token)
       char *token
    OUTPUT:
       RETVAL

AjPReport
ajAcdGetReport (token)
       char *token
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_9_0

AjPFile
ajAcdGetScop (token)
       char *token
    OUTPUT:
       RETVAL

#else

AjPScop
ajAcdGetScop (token)
       char *token
    OUTPUT:
       RETVAL

#endif

AjPStr*
ajAcdGetSelect (token)
       char *token
    OUTPUT:
       RETVAL

AjPStr
ajAcdGetSelectI (token, num)
       char *token
       ajint num
    OUTPUT:
       RETVAL

AjPSeq
ajAcdGetSeq (token)
       char *token
    OUTPUT:
       RETVAL

AjPSeqall
ajAcdGetSeqall (token)
       char *token
    OUTPUT:
       RETVAL

AjPSeqout
ajAcdGetSeqout (token)
       char *token
    OUTPUT:
       RETVAL

AjPSeqout
ajAcdGetSeqoutall (token)
       char *token
    OUTPUT:
       RETVAL

AjPSeqout
ajAcdGetSeqoutset (token)
       char *token
    OUTPUT:
       RETVAL

AjPSeqset
ajAcdGetSeqset (token)
       char *token
    OUTPUT:
       RETVAL

AjPStr
ajAcdGetString (token)
       char *token
    OUTPUT:
       RETVAL

void
ajAcdPrintType (outf, full)
       AjPFile outf
       AjBool full

#ifdef HAVE_EMBOSS_2_9_0

const char*
ajAcdProgram ()
    OUTPUT:
       RETVAL

#else

char*
ajAcdProgram ()
    OUTPUT:
       RETVAL

#endif

void
ajAcdProgramS (pgm)
       AjPStr  &pgm
    OUTPUT:
       pgm

AjBool
ajAcdStdout ()
    OUTPUT:
       RETVAL

AjPStr
ajAcdValue (token)
       char* token
    OUTPUT:
       RETVAL



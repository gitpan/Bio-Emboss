#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqabi		PACKAGE = Bio::Emboss		

 # code from ajseqabi.h: automatically generated

ajint
ajSeqABIGetBaseOffset (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

void
ajSeqABIGetBasePosition (fp, numBases, basePositions)
       AjPFile fp
       ajlong numBases
       AjPShort& basePositions
    OUTPUT:
       basePositions

ajint
ajSeqABIGetBasePosOffset (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

float
ajSeqABIGetBaseSpace (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

void
ajSeqABIGetData (fp, Offset, numPoints, trace)
       AjPFile fp
       ajlong &Offset
       ajlong numPoints
       AjPInt2d trace
    OUTPUT:
       Offset

ajint
ajSeqABIGetFWO (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

ajint
ajSeqABIGetNBase (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

ajint
ajSeqABIGetNData (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

ajint
ajSeqABIGetPrimerOffset (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

ajint
ajSeqABIGetPrimerPosition (fp)
       AjPFile fp
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_9_0

void
ajSeqABIGetSignal (fp, fwo_, sigC, sigA, sigG, sigT)
       AjPFile fp
       ajlong fwo_
       ajshort &sigC
       ajshort &sigA
       ajshort &sigG
       ajshort &sigT
    OUTPUT:
       sigC
       sigA
       sigG
       sigT

#else

void
ajSeqABIGetSignal (fp, fwo_, sigC, sigA, sigG, sigT)
       AjPFile fp
       ajlong fwo_
       ajshort sigC
       ajshort sigA
       ajshort sigG
       ajshort sigT

#endif

AjBool
ajSeqABIGetTraceOffset (fp, Offset)
       AjPFile fp
       ajlong &Offset
    OUTPUT:
       RETVAL
       Offset

AjBool
ajSeqABIMachineName (fp, machine)
       AjPFile fp
       AjPStr &machine
    OUTPUT:
       RETVAL
       machine

AjBool
ajSeqABIReadSeq (fp, baseO, numBases, nseq)
       AjPFile fp
       ajlong baseO
       ajlong numBases
       AjPStr& nseq
    OUTPUT:
       RETVAL
       nseq

AjBool
ajSeqABISampleName (fp, sample)
       AjPFile fp
       AjPStr &sample
    OUTPUT:
       RETVAL
       sample

AjBool
ajSeqABITest (fp)
       AjPFile fp
    OUTPUT:
       RETVAL


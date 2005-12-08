#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_matrices		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajmatrices.h: automatically generated


void
ajMatrixChar (thys, i, label)
       const AjPMatrix  thys
       ajint i
       AjPStr &label
    OUTPUT:
       label

AjPSeqCvt
ajMatrixCvt (thys)
       const AjPMatrix  thys
    OUTPUT:
       RETVAL

void
ajMatrixDel (thys)
       AjPMatrix  &thys
    OUTPUT:
       thys

const AjPStr
ajMatrixName (thys)
       const AjPMatrix  thys
    OUTPUT:
       RETVAL

AjBool
ajMatrixSeqNum (thys, seq, numseq)
       const AjPMatrix  thys
       const AjPSeq seq
       AjPStr& numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajMatrixRead (pthis, filename)
       AjPMatrix & pthis
       const AjPStr filename
    OUTPUT:
       RETVAL
       pthis

ajint
ajMatrixSize (thys)
       const AjPMatrix  thys
    OUTPUT:
       RETVAL


void
ajMatrixfChar (thys, i, label)
       const AjPMatrixf  thys
       ajint i
       AjPStr &label
    OUTPUT:
       label

AjPSeqCvt
ajMatrixfCvt (thys)
       const AjPMatrixf  thys
    OUTPUT:
       RETVAL

void
ajMatrixfDel (thys)
       AjPMatrixf  &thys
    OUTPUT:
       thys

const AjPStr
ajMatrixfName (thys)
       const AjPMatrixf  thys
    OUTPUT:
       RETVAL

AjBool
ajMatrixfSeqNum (thys, seq, numseq)
       const AjPMatrixf  thys
       const AjPSeq seq
       AjPStr& numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajMatrixfRead (pthis, filename)
       AjPMatrixf & pthis
       const AjPStr filename
    OUTPUT:
       RETVAL
       pthis

ajint
ajMatrixfSize (thys)
       const AjPMatrixf  thys
    OUTPUT:
       RETVAL


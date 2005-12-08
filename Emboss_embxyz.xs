#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embxyz		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embxyz.h: automatically generated

AjBool
embXyzSeqsetNR (input, keep, nset, matrix, gapopen, gapextend, thresh)
       const AjPList input
       AjPInt &keep
       ajint &nset
       const AjPMatrixf matrix
       float gapopen
       float gapextend
       float thresh
    OUTPUT:
       RETVAL
       keep
       nset

AjBool
embXyzSeqsetNRRange (input, keep, nset, matrix, gapopen, gapextend, thresh1, thresh2)
       const AjPList input
       AjPInt &keep
       ajint &nset
       const AjPMatrixf matrix
       float gapopen
       float gapextend
       float thresh1
       float thresh2
    OUTPUT:
       RETVAL
       keep
       nset


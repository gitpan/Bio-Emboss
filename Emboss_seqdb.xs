#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqdb		PACKAGE = Bio::Emboss		

 # code from ajseqdb.h: automatically generated

AjBool
ajSeqAccessAsis (seqin)
       AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqAccessFile (seqin)
       AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqAccessOffset (seqin)
       AjPSeqin seqin
    OUTPUT:
       RETVAL


#ifdef HAVE_EMBOSS_2_9_0

SeqPAccess
ajSeqMethod (method)
       const AjPStr method
    OUTPUT:
       RETVAL

#else

AjBool
ajSeqMethod (method, access)
       AjPStr method
       SeqPAccess& access
    OUTPUT:
       RETVAL
       access

#endif

void
ajSeqPrintAccess (outf, full)
       AjPFile outf
       AjBool full


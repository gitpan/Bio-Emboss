#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

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

AjBool
ajSeqMethod (method, access)
       AjPStr method
       SeqPAccess& access
    OUTPUT:
       RETVAL
       access

void
ajSeqPrintAccess (outf, full)
       AjPFile outf
       AjBool full


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_seqtype		PACKAGE = Bio::Emboss		

 # code from ajseqtype.h: automatically generated

void
ajSeqGap (thys, gapc, padc)
       AjPSeq thys
       char gapc
       char padc

void
ajSeqGapLen (thys, gapc, padc, ilen)
       AjPSeq thys
       char gapc
       char padc
       ajint ilen

void
ajSeqGapS (seq, gapc)
       AjPStr& seq
       char gapc
    OUTPUT:
       seq

void
ajSeqPrintType (outf, full)
       AjPFile outf
       AjBool full

void
ajSeqSetNuc (thys)
       AjPSeq thys

void
ajSeqSetProt (thys)
       AjPSeq thys

void
ajSeqType (thys)
       AjPSeq thys


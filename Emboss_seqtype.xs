#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

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

char
ajSeqTypeAny (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeDna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapany (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapdna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapnuc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeAnyprot (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapprot (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeGaprna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeNuc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeProt (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypePuredna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypePurenuc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypePureprot (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypePurerna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeRna (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char
ajSeqTypeStopprot (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqType (thys)
       AjPSeq thys

AjBool
ajSeqTypeCheck (thys, seqin)
       AjPSeq thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL


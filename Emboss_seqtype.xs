#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqtype		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

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
ajSeqsetSetNuc (thys)
       AjPSeqset thys

void
ajSeqsetSetProt (thys)
       AjPSeqset thys

char
ajSeqTypeAnyprotS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeDnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapanyS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapdnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapnucS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGaprnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeNucS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeProtS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeRnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeIsAny (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeIsNuc (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeIsProt (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

void
ajSeqType (thys)
       AjPSeq thys

AjBool
ajSeqTypeCheckIn (thys, seqin)
       AjPSeq thys
       const AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeCheckS (pthys, type_name)
       AjPStr& pthys
       const AjPStr type_name
    OUTPUT:
       RETVAL
       pthys


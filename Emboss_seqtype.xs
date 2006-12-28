#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqtype		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseqtype.c: automatically generated

AjBool
ajSeqTypeCheckS (pthys, type_name)
       AjPStr& pthys
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeCheckIn (thys, seqin)
       AjPSeq thys
       const AjPSeqin seqin
    OUTPUT:
       RETVAL

char
ajSeqTypeNucS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeDnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeRnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapdnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGaprnaS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapnucS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeAnyprotS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeProtS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

char
ajSeqTypeGapanyS (pthys)
       const AjPStr pthys
    OUTPUT:
       RETVAL

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

void
ajSeqType (thys)
       AjPSeq thys

void
ajSeqPrintType (outf, full)
       AjPFile outf
       AjBool full

AjBool
ajSeqTypeIsProt (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeIsNuc (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeIsAny (type_name)
       const AjPStr type_name
    OUTPUT:
       RETVAL

AjBool
ajSeqTypeSummary (type_name, Ptype, gaps)
       const AjPStr type_name
       AjPStr& Ptype
       AjBool& gaps
    OUTPUT:
       RETVAL
       Ptype
       gaps

void
ajSeqTypeExit ()


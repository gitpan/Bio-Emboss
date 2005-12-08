#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqread		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseqread.h: automatically generated


AjPSeqall
ajSeqallFile (usa)
       const AjPStr usa
    OUTPUT:
       RETVAL

AjBool
ajSeqAllRead (thys, seqin)
       AjPSeq thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqGetFromUsa (thys, protein, seq)
       const AjPStr thys
       AjBool protein
       AjPSeq &seq
    OUTPUT:
       RETVAL
       seq

AjBool
ajSeqFormatTest (format)
       const AjPStr format
    OUTPUT:
       RETVAL

void
ajSeqinClear (thys)
       AjPSeqin thys

void
ajSeqinClearPos (thys)
       AjPSeqin thys

void
ajSeqinDel (pthis)
       AjPSeqin& pthis
    OUTPUT:
       pthis

AjPSeqin
ajSeqinNew ()
    OUTPUT:
       RETVAL

void
ajSeqinSetNuc (seqin)
       AjPSeqin seqin

void
ajSeqinSetProt (seqin)
       AjPSeqin seqin

void
ajSeqinSetRange (seqin, ibegin, iend)
       AjPSeqin seqin
       ajint ibegin
       ajint iend

void
ajSeqinUsa (pthis, Usa)
       AjPSeqin& pthis
       const AjPStr Usa
    OUTPUT:
       pthis

AjBool
ajSeqParseFasta (str, id, acc, sv, desc)
       const AjPStr str
       AjPStr& id
       AjPStr& acc
       AjPStr& sv
       AjPStr& desc
    OUTPUT:
       RETVAL
       id
       acc
       sv
       desc

AjBool
ajSeqParseNcbi (str, id, acc, sv, gi, desc)
       const AjPStr str
       AjPStr& id
       AjPStr& acc
       AjPStr& sv
       AjPStr& gi
       AjPStr& desc
    OUTPUT:
       RETVAL
       id
       acc
       sv
       gi
       desc

void
ajSeqQueryClear (thys)
       AjPSeqQuery thys

void
ajSeqQueryDel (pthis)
       AjPSeqQuery &pthis
    OUTPUT:
       pthis

AjBool
ajSeqQueryIs (qry)
       const AjPSeqQuery qry
    OUTPUT:
       RETVAL

AjPSeqQuery
ajSeqQueryNew ()
    OUTPUT:
       RETVAL

void
ajSeqQueryStarclear (qry)
       AjPSeqQuery qry

void
ajSeqQueryTrace (qry)
       const AjPSeqQuery qry

AjBool
ajSeqQueryWild (qry)
       AjPSeqQuery qry
    OUTPUT:
       RETVAL

void
ajSeqPrintInFormat (outf, full)
       AjPFile outf
       AjBool full

AjBool
ajSeqRead (thys, seqin)
       AjPSeq thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL

ajint
ajSeqsetApp (thys, seq)
       AjPSeqset thys
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqsetGetFromUsa (thys, seq)
       const AjPStr thys
       AjPSeqset &seq
    OUTPUT:
       RETVAL
       seq

AjBool
ajSeqsetFromList (thys, list)
       AjPSeqset thys
       const AjPList list
    OUTPUT:
       RETVAL

ajint
ajSeqsetFromPair (thys, seqa, seqb)
       AjPSeqset thys
       const AjPSeq seqa
       const AjPSeq seqb
    OUTPUT:
       RETVAL

AjBool
ajSeqsetallRead (thys, seqin)
       AjPList thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqsetRead (thys, seqin)
       AjPSeqset thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL


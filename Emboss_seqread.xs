#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_seqread		PACKAGE = Bio::Emboss		

 # code from ajseqread.h: automatically generated

AjPSeqall
ajSeqallFile (usa)
       AjPStr usa
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
       AjPStr thys
       AjBool protein
       AjPSeq &seq
    OUTPUT:
       RETVAL
       seq

void
ajSeqinClear (thys)
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

AjBool
ajSeqParseFasta (str, id, acc, sv, desc)
       AjPStr str
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
       AjPStr str
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

AjBool
ajSeqReadSelex (inf, outf)
       AjPFile inf
       AjPFile outf
    OUTPUT:
       RETVAL

void
ajSeqinUsa (pthis, Usa)
       AjPSeqin& pthis
       AjPStr Usa
    OUTPUT:
       pthis

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
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqsetRead (thys, seqin)
       AjPSeqset thys
       AjPSeqin seqin
    OUTPUT:
       RETVAL

AjBool
ajSeqsetFromList (thys, list)
       AjPSeqset thys
       AjPList list
    OUTPUT:
       RETVAL

ajint
ajSeqsetFromPair (thys, seqa, seqb)
       AjPSeqset thys
       AjPSeq seqa
       AjPSeq seqb
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_seqwrite		PACKAGE = Bio::Emboss		

 # code from ajseqwrite.h: automatically generated

void
ajSeqAllWrite (outseq, seq)
       AjPSeqout outseq
       AjPSeq seq

AjBool
ajSeqFileNewOut (seqout, name)
       AjPSeqout seqout
       AjPStr name
    OUTPUT:
       RETVAL

ajint
ajSeqoutCheckGcg (outseq)
       AjPSeqout outseq
    OUTPUT:
       RETVAL

void
ajSeqoutClear (thys)
       AjPSeqout thys

void
ajSeqoutDel (thys)
       AjPSeqout& thys
    OUTPUT:
       thys

AjBool
ajSeqOutFormatDefault (pformat)
       AjPStr& pformat
    OUTPUT:
       RETVAL
       pformat

AjBool
ajSeqOutFormatSingle (format)
       AjPStr format
    OUTPUT:
       RETVAL

AjPSeqout
ajSeqoutNew ()
    OUTPUT:
       RETVAL

AjPSeqout
ajSeqoutNewF (file)
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajSeqoutOpen (thys)
       AjPSeqout thys
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormat (thys, format)
       AjPSeqout thys
       AjPStr format
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormatC (thys, format)
       AjPSeqout thys
       char* format
    OUTPUT:
       RETVAL

void
ajSeqoutTrace (seq)
       AjPSeqout seq

void
ajSeqPrintOutFormat (outf, full)
       AjPFile outf
       AjBool full

void
ajSeqoutUsa (pthis, Usa)
       AjPSeqout& pthis
       AjPStr Usa
    OUTPUT:
       pthis

void
ajSeqsetWrite (seqout, seq)
       AjPSeqout seqout
       AjPSeqset seq

void
ajSeqWrite (seqout, seq)
       AjPSeqout seqout
       AjPSeq seq

void
ajSeqWriteClose (outseq)
       AjPSeqout outseq

void
ajSeqWriteXyz (outf, seq, prefix)
       AjPFile outf
       AjPStr seq
       char *prefix


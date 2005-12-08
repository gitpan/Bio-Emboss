#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqwrite		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseqwrite.h: automatically generated

void
ajSeqAllWrite (outseq, seq)
       AjPSeqout  outseq
       const AjPSeq seq

AjBool
ajSeqFileNewOut (seqout, name)
       AjPSeqout  seqout
       const AjPStr name
    OUTPUT:
       RETVAL

ajint
ajSeqoutCheckGcg (outseq)
       const AjPSeqout  outseq
    OUTPUT:
       RETVAL

void
ajSeqoutClear (thys)
       AjPSeqout  thys

void
ajSeqoutDel (thys)
       AjPSeqout & thys
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
       AjPSeqout  thys
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormat (thys, format)
       AjPSeqout  thys
       const AjPStr format
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormatC (thys, format)
       AjPSeqout  thys
       const char* format
    OUTPUT:
       RETVAL

void
ajSeqoutTrace (seq)
       const AjPSeqout  seq

void
ajSeqPrintOutFormat (outf, full)
       AjPFile outf
       AjBool full

void
ajSeqoutUsa (pthis, Usa)
       AjPSeqout & pthis
       const AjPStr Usa
    OUTPUT:
       pthis

void
ajSeqsetWrite (seqout, seq)
       AjPSeqout  seqout
       const AjPSeqset seq

void
ajSeqWrite (seqout, seq)
       AjPSeqout  seqout
       const AjPSeq seq

void
ajSeqWriteClose (outseq)
       AjPSeqout  outseq

void
ajSeqWriteXyz (outf, seq, prefix)
       AjPFile outf
       const AjPStr seq
       const char *prefix

void
ajSssWriteXyz (outf, seq, prefix)
       AjPFile outf
       const AjPStr seq
       const char *prefix


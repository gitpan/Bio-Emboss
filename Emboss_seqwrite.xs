#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqwrite		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseqwrite.c: automatically generated

AjBool
ajSeqoutOpen (seqout)
       AjPSeqout seqout
    OUTPUT:
       RETVAL
       seqout

AjBool
ajSeqOutFormatSingle (format)
       AjPStr format
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormat (thys, format)
       AjPSeqout thys
       const AjPStr format
    OUTPUT:
       RETVAL

AjBool
ajSeqOutSetFormatC (thys, format)
       AjPSeqout thys
       const char * format
    OUTPUT:
       RETVAL

AjBool
ajSeqOutFormatDefault (pformat)
       AjPStr& pformat
    OUTPUT:
       RETVAL
       pformat

void
ajSeqoutUsa (pthis, Usa)
       AjPSeqout& pthis
       const AjPStr Usa

void
ajSeqoutClear (seqout)
       AjPSeqout seqout

void
ajSeqPrintOutFormat (outf, full)
       AjPFile outf
       AjBool full

AjBool
ajSeqFindOutFormat (format, iformat)
       const AjPStr format
       ajint& iformat
    OUTPUT:
       RETVAL
       iformat

ajint
ajSeqoutCheckGcg (outseq)
       const AjPSeqout outseq
    OUTPUT:
       RETVAL

void
ajSeqoutDefName (thys, setname, multi)
       AjPSeqout thys
       const AjPStr setname
       AjBool multi
    OUTPUT:
       thys

void
ajSeqoutTrace (seq)
       const AjPSeqout seq

void
ajSeqoutCount (seqout, b)
       const AjPSeqout seqout
       ajuint& b
    OUTPUT:
       b

void
ajSeqWriteXyz (outf, seq, prefix)
       AjPFile outf
       const AjPStr seq
       const char * prefix
    OUTPUT:
       outf

void
ajSssWriteXyz (outf, seq, prefix)
       AjPFile outf
       const AjPStr seq
       const char * prefix
    OUTPUT:
       outf

void
ajSeqWriteExit ()

AjPSeqout
ajSeqoutNew ()
    OUTPUT:
       RETVAL

AjPSeqout
ajSeqoutNewFile (file)
       AjPFile file
    OUTPUT:
       RETVAL

void
ajSeqoutDel (Pseqout)
       AjPSeqout& Pseqout
    OUTPUT:
       Pseqout

void
ajSeqoutWriteSeq (outseq, seq)
       AjPSeqout outseq
       const AjPSeq seq

void
ajSeqoutWriteSet (outseq, seq)
       AjPSeqout outseq
       const AjPSeqset seq

void
ajSeqoutClose (seqout)
       AjPSeqout seqout

AjBool
ajSeqoutOpenFilename (seqout, name)
       AjPSeqout seqout
       const AjPStr name
    OUTPUT:
       RETVAL


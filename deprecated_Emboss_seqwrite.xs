#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seqwrite_deprecated		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseqwrite.c: automatically generated

void
ajSeqAllWrite (outseq, seq)
       AjPSeqout outseq
       const AjPSeq seq

void
ajSeqsetWrite (outseq, seq)
       AjPSeqout outseq
       const AjPSeqset seq

void
ajSeqWriteClose (outseq)
       AjPSeqout outseq

void
ajSeqWrite (outseq, seq)
       AjPSeqout outseq
       const AjPSeq seq

AjBool
ajSeqFileNewOut (seqout, name)
       AjPSeqout seqout
       const AjPStr name
    OUTPUT:
       RETVAL


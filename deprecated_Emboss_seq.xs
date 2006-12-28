#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seq_deprecated		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseq.h: automatically generated

void
ajSeqallReverse (thys)
       AjPSeqall thys


void
ajSeqallToLower (seqall)
       AjPSeqall seqall

void
ajSeqallToUpper (seqall)
       AjPSeqall seqall

void
ajSeqAssAcc (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssAccC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssDesc (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssDescC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssEntry (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssEntryC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssFile (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssFull (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssFullC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssGi (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssGiC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssName (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssNameC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssSeq (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssSeqC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssSeqCI (thys, text, ilen)
       AjPSeq thys
       const char* text
       ajint ilen

void
ajSeqAssSv (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssSvC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssUfo (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssUfoC (thys, text)
       AjPSeq thys
       const char* text

void
ajSeqAssUsa (thys, str)
       AjPSeq thys
       const AjPStr str

void
ajSeqAssUsaC (thys, text)
       AjPSeq thys
       const char* text


ajint
ajSeqBegin (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqChar (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

char*
ajSeqCharCopy (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

char*
ajSeqCharCopyL (seq, size)
       const AjPSeq seq
       size_t size
    OUTPUT:
       RETVAL

ajint
ajSeqCheckGcg (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL


void
ajSeqCompOnly (thys)
       AjPSeq thys



void
ajSeqCompOnlyStr (thys)
       AjPStr& thys
    OUTPUT:
       thys

AjPFeattable
ajSeqCopyFeat (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqCount (thys, b)
       const AjPSeq thys
       ajint &b
    OUTPUT:
       b

ajuint
ajSeqCrc (seq)
       const AjPStr seq 
    OUTPUT:
       RETVAL













ajint
ajSeqEnd (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL






const AjPStr
ajSeqGetAcc (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetDesc (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetEntry (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL


const AjPStr
ajSeqGetGi (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetName (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL


AjBool
ajSeqGetReverse (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqGetReversed (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetSv (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetTax (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetUsa (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL




ajint
ajSeqLen (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

void
ajSeqMakeUsa (thys, seqin)
       AjPSeq thys
       const AjPSeqin seqin

void
ajSeqMakeUsaS (thys, seqin, usa)
       const AjPSeq thys
       const AjPSeqin seqin
       AjPStr& usa
    OUTPUT:
       usa


float
ajSeqMW (seq)
       const AjPStr seq
    OUTPUT:
       RETVAL

const char*
ajSeqName (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL


AjPSeq
ajSeqNewC (seq, name)
       const char* seq
       const char* name
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewL (size)
       size_t size
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewRange (seq, offset, offend, rev)
       const AjPStr seq
       ajint offset
       ajint offend
       AjBool rev
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewRangeCI (seq, len, offset, offend, rev)
       const char* seq
       ajint len
       ajint offset
       ajint offend
       AjBool rev
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewStr (seq)
       const AjPStr seq
    OUTPUT:
       RETVAL






ajint
ajSeqOffset (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqOffend (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqPos (thys, ipos)
       const AjPSeq thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqPosI (thys, imin, ipos)
       const AjPSeq thys
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqPosII (ilen, imin, ipos)
       ajint ilen
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

void
ajSeqReplace (thys, seq)
       AjPSeq thys
       const AjPStr seq

void
ajSeqReplaceC (thys, seq)
       AjPSeq thys
       const char* seq

AjBool
ajSeqRev (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqReverse (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL


void
ajSeqReverseStr (thys)
       AjPStr& thys
    OUTPUT:
       thys

void
ajSeqRevOnly (thys)
       AjPSeq thys



void
ajSeqSetRangeDir (seq, ibegin, iend, rev)
       AjPSeq seq
       ajint ibegin
       ajint iend
       AjBool rev


const AjPStr
ajSeqStr (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqStrCopy (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqToLower (thys)
       AjPSeq thys

void
ajSeqToUpper (thys)
       AjPSeq thys





ajint
ajSeqTrueBegin (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqTrueEnd (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqTrueLen (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqTruePos (thys, ipos)
       const AjPSeq thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqTruePosI (thys, imin, ipos)
       const AjPSeq thys
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqTruePosII (ilen, imin, ipos)
       ajint ilen
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL


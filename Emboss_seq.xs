#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seq		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseq.h: automatically generated

AjBool
ajIsAccession (accnum)
       const AjPStr accnum
    OUTPUT:
       RETVAL

AjPStr
ajIsSeqversion (sv)
       const AjPStr sv
    OUTPUT:
       RETVAL

AjPSelex
ajSelexNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajSelexDel (thys)
       AjPSelex &thys
    OUTPUT:
       thys

AjPSelexdata
ajSelexdataNew ()
    OUTPUT:
       RETVAL

void
ajSelexdataDel (thys)
       AjPSelexdata &thys
    OUTPUT:
       thys

void
ajSelexSQDel (thys)
       AjPSelexSQ &thys
    OUTPUT:
       thys

AjPSelexSQ
ajSelexSQNew ()
    OUTPUT:
       RETVAL

AjPStockholm
ajStockholmNew (i)
       ajint i
    OUTPUT:
       RETVAL

void
ajStockholmDel (thys)
       AjPStockholm &thys
    OUTPUT:
       thys

void
ajStockholmdataDel (thys)
       AjPStockholmdata &thys
    OUTPUT:
       thys

AjPStockholmdata
ajStockholmdataNew ()
    OUTPUT:
       RETVAL

ajint
ajSeqallBegin (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

void
ajSeqallDel (thys)
       AjPSeqall &thys
    OUTPUT:
       thys

ajint
ajSeqallEnd (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqallGetName (thys)
       const AjPSeqall thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqallGetNameSeq (thys)
       const AjPSeqall thys
    OUTPUT:
       RETVAL

ajint
ajSeqallGetRange (thys, begin, end)
       const AjPSeqall thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

const AjPStr
ajSeqallGetUsa (thys)
       const AjPSeqall thys
    OUTPUT:
       RETVAL

ajint
ajSeqallLen (seqall)
       const AjPSeqall seqall
    OUTPUT:
       RETVAL

AjPSeqall
ajSeqallNew ()
    OUTPUT:
       RETVAL

void
ajSeqallClear (thys)
       AjPSeqall thys

AjBool
ajSeqallNext (seqall, retseq)
       AjPSeqall seqall
       AjPSeq& retseq
    OUTPUT:
       RETVAL
       retseq

void
ajSeqallReverse (thys)
       AjPSeqall thys

void
ajSeqallSetRange (seq, ibegin, iend)
       AjPSeqall seq
       ajint ibegin
       ajint iend

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

char
ajSeqBaseComp (base)
       char base
    OUTPUT:
       RETVAL

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
ajSeqClear (thys)
       AjPSeq thys

void
ajSeqCompOnly (thys)
       AjPSeq thys

void
ajSeqGarbageOn (thys)
       AjPSeq &thys
    OUTPUT:
       thys

void
ajSeqGarbageOff (thys)
       AjPSeq &thys
    OUTPUT:
       thys

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
       const AjPStr thys
       ajint &b
    OUTPUT:
       b

ajuint
ajSeqCrc (seq)
       const AjPStr seq 
    OUTPUT:
       RETVAL

void
ajSeqCvtDel (thys)
       AjPSeqCvt & thys
    OUTPUT:
       thys

ajint
ajSeqCvtK (thys, ch)
       const AjPSeqCvt  thys
       char ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKS (thys, ch)
       const AjPSeqCvt  thys
       const AjPStr ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKSRow (thys, ch)
       const AjPSeqCvt  thys
       const AjPStr ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKSColumn (thys, ch)
       const AjPSeqCvt  thys
       const AjPStr ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtLen (thys)
       const AjPSeqCvt  thys
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNew (bases)
       const char* bases
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewText (bases)
       const char* bases
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewZero (bases)
       const char* bases
    OUTPUT:
       RETVAL


void
ajSeqCvtTrace (cvt)
       const AjPSeqCvt  cvt

void
ajSeqDel (pthis)
       AjPSeq& pthis
    OUTPUT:
       pthis

ajint
ajSeqEnd (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqFill (seq, len)
       AjPSeq seq
       ajint len
    OUTPUT:
       RETVAL

ajint
ajSeqGapCount (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

ajint
ajSeqGapCountS (str)
       const AjPStr str
    OUTPUT:
       RETVAL

void
ajSeqGapStandard (thys, gapch)
       AjPSeq thys
       char gapch

void
ajSeqGapStandardS (thys, gapch)
       AjPStr thys
       char gapch

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

const AjPFeattable
ajSeqGetFeat (thys)
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

ajint
ajSeqGetRange (thys, begin, end)
       const AjPSeq thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

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

void
ajSeqinTrace (thys)
       const AjPSeqin thys

AjBool
ajSeqIsNuc (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqIsProt (thys)
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

void
ajSeqMod (thys)
       AjPSeq thys

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
ajSeqNew ()
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

AjBool
ajSeqNum (thys, cvt, numseq)
       const AjPSeq thys
       const AjPSeqCvt  cvt
       AjPStr &numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajSeqNumS (thys, cvt, numseq)
       const AjPStr thys
       const AjPSeqCvt  cvt
       AjPStr &numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajSeqIsGarbage (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqIsReversed (thys)
       const AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqIsTrimmed (thys)
       const AjPSeq thys
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
ajSeqReverseForce (thys)
       AjPSeq thys

void
ajSeqReverseStr (thys)
       AjPStr& thys
    OUTPUT:
       thys

void
ajSeqRevOnly (thys)
       AjPSeq thys

ajint
ajSeqsetBegin (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetDel (thys)
       AjPSeqset &thys
    OUTPUT:
       thys

ajint
ajSeqsetEnd (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

ajint
ajSeqsetFill (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetGetFormat (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetGetName (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetGetRange (thys, begin, end)
       const AjPSeqset thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

const AjPSeq
ajSeqsetGetSeq (thys, i)
       const AjPSeqset thys
       ajint i
    OUTPUT:
       RETVAL


const AjPStr
ajSeqsetGetUsa (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsDna (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsNuc (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsProt (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsRna (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetLen (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetName (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetAcc (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

AjPSeqset
ajSeqsetNew ()
    OUTPUT:
       RETVAL

void
ajSeqSetOffsets (seq, ioff, ioriglen)
       AjPSeq seq
       ajint ioff
       ajint ioriglen

void
ajSeqSetRange (seq, ibegin, iend)
       AjPSeq seq
       ajint ibegin
       ajint iend

void
ajSeqSetRangeDir (seq, ibegin, iend, rev)
       AjPSeq seq
       ajint ibegin
       ajint iend
       AjBool rev

void
ajSeqsetReverse (thys)
       AjPSeqset thys

const char*
ajSeqsetSeq (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

void
ajSeqsetSetRange (seq, ibegin, iend)
       AjPSeqset seq
       ajint ibegin
       ajint iend

ajint
ajSeqsetSize (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetToLower (seq)
       AjPSeqset seq

float
ajSeqsetTotweight (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetToUpper (seq)
       AjPSeqset seq

void
ajSeqsetTrim (thys)
       AjPSeqset thys

float
ajSeqsetWeight (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

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

void
ajSeqTrace (seq)
       const AjPSeq seq

void
ajSeqTraceT (seq, title)
       const AjPSeq seq
       const char* title

AjBool
ajSeqFindOutFormat (format, iformat)
       const AjPStr format
       ajint& iformat
    OUTPUT:
       RETVAL
       iformat

AjBool
ajSeqTrim (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

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


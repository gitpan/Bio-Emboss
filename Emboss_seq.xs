#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_seq		PACKAGE = Bio::Emboss		

 # code from ajseq.h: automatically generated

AjBool
ajIsAccession (accnum)
       AjPStr accnum
    OUTPUT:
       RETVAL

AjPStr
ajIsSeqversion (sv)
       AjPStr sv
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
       AjPSeqall seq
    OUTPUT:
       RETVAL

void
ajSeqallDel (thys)
       AjPSeqall &thys
    OUTPUT:
       thys

ajint
ajSeqallEnd (seq)
       AjPSeqall seq
    OUTPUT:
       RETVAL

AjPStr
ajSeqallGetName (thys)
       AjPSeqall thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqallGetNameSeq (thys)
       AjPSeqall thys
    OUTPUT:
       RETVAL

ajint
ajSeqallGetRange (thys, begin, end)
       AjPSeqall thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

AjPStr
ajSeqallGetUsa (thys)
       AjPSeqall thys
    OUTPUT:
       RETVAL

ajint
ajSeqallLen (seqall)
       AjPSeqall seqall
    OUTPUT:
       RETVAL

AjPSeqall
ajSeqallNew ()
    OUTPUT:
       RETVAL

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
       AjPStr str

void
ajSeqAssAccC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssDesc (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssDescC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssEntry (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssEntryC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssFile (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssFull (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssFullC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssGi (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssGiC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssName (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssNameC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssSeq (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssSeqC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssSeqCI (thys, text, ilen)
       AjPSeq thys
       char* text
       ajint ilen

void
ajSeqAssSv (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssSvC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssUfo (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssUfoC (thys, text)
       AjPSeq thys
       char* text

void
ajSeqAssUsa (thys, str)
       AjPSeq thys
       AjPStr str

void
ajSeqAssUsaC (thys, text)
       AjPSeq thys
       char* text

char
ajSeqBaseComp (base)
       char base
    OUTPUT:
       RETVAL

ajint
ajSeqBegin (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

char*
ajSeqChar (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

char*
ajSeqCharCopy (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

char*
ajSeqCharCopyL (seq, size)
       AjPSeq seq
       size_t size
    OUTPUT:
       RETVAL

ajint
ajSeqCheckGcg (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqClear (thys)
       AjPSeq thys

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
       AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqCount (thys, b)
       AjPStr thys
       ajint &b
    OUTPUT:
       b

ajuint
ajSeqCrc (seq)
        AjPStr seq 
    OUTPUT:
       RETVAL

void
ajSeqCvtDel (thys)
       AjPSeqCvt& thys
    OUTPUT:
       thys

ajint
ajSeqCvtK (thys, ch)
       AjPSeqCvt thys
       char ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtLen (thys)
       AjPSeqCvt thys
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNew (bases)
       char* bases
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewText (bases)
       char* bases
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewZero (bases)
       char* bases
    OUTPUT:
       RETVAL

ajint
ajSeqCvtSize (cvt)
       AjPSeqCvt cvt
    OUTPUT:
       RETVAL

void
ajSeqCvtTrace (cvt)
       AjPSeqCvt cvt

void
ajSeqDel (pthis)
       AjPSeq& pthis
    OUTPUT:
       pthis

ajint
ajSeqEnd (seq)
       AjPSeq seq
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
       AjPSeq thys
    OUTPUT:
       RETVAL

ajint
ajSeqGapCountS (str)
       AjPStr str
    OUTPUT:
       RETVAL

void
ajSeqGapStandard (thys, gapch)
       AjPSeq thys
       char gapch

AjPStr
ajSeqGetAcc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetDesc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetEntry (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPFeattable
ajSeqGetFeat (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetGi (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetName (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

ajint
ajSeqGetRange (thys, begin, end)
       AjPSeq thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

AjBool
ajSeqGetReverse (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetSv (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetUsa (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

void
ajSeqinTrace (thys)
       AjPSeqin thys

AjBool
ajSeqIsNuc (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjBool
ajSeqIsProt (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

ajint
ajSeqLen (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

void
ajSeqMakeUsa (thys, seqin)
       AjPSeq thys
       AjPSeqin seqin

void
ajSeqMod (thys)
       AjPSeq thys

float
ajSeqMW (seq)
       AjPStr seq
    OUTPUT:
       RETVAL

char*
ajSeqName (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNew ()
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewL (size)
       size_t size
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewS (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqNum (thys, cvt, numseq)
       AjPSeq thys
       AjPSeqCvt cvt
       AjPStr &numseq
    OUTPUT:
       RETVAL
       numseq

ajint
ajSeqOffset (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqOffend (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqPos (thys, ipos)
       AjPSeq thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqPosI (thys, imin, ipos)
       AjPSeq thys
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
ajSeqQueryClear (thys)
       AjPSeqQuery thys

void
ajSeqQueryDel (pthis)
       AjPSeqQuery &pthis
    OUTPUT:
       pthis

AjBool
ajSeqQueryIs (qry)
       AjPSeqQuery qry
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
       AjPSeqQuery qry

AjBool
ajSeqQueryWild (qry)
       AjPSeqQuery qry
    OUTPUT:
       RETVAL

void
ajSeqReplace (thys, seq)
       AjPSeq thys
       AjPStr seq

void
ajSeqReplaceC (thys, seq)
       AjPSeq thys
       char* seq

void
ajSeqReverse (thys)
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
       AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetDel (thys)
       AjPSeqset &thys
    OUTPUT:
       thys

ajint
ajSeqsetEnd (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

ajint
ajSeqsetFill (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

AjPStr
ajSeqsetGetFormat (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqsetGetName (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetGetRange (thys, begin, end)
       AjPSeqset thys
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

AjPSeq
ajSeqsetGetSeq (thys, i)
       AjPSeqset thys
       ajint i
    OUTPUT:
       RETVAL

AjPStr
ajSeqsetGetUsa (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsDna (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsNuc (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsProt (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

AjBool
ajSeqsetIsRna (thys)
       AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetLen (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

AjPStr
ajSeqsetName (seq, i)
       AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

AjPSeqset
ajSeqsetNew ()
    OUTPUT:
       RETVAL

void
ajSeqSetRange (seq, ibegin, iend)
       AjPSeq seq
       ajint ibegin
       ajint iend

void
ajSeqsetReverse (thys)
       AjPSeqset thys

char*
ajSeqsetSeq (seq, i)
       AjPSeqset seq
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
       AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetToLower (seq)
       AjPSeqset seq

float
ajSeqsetTotweight (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetToUpper (seq)
       AjPSeqset seq

float
ajSeqsetWeight (seq, i)
       AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

AjPStr
ajSeqStr (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL

AjPStr
ajSeqStrCopy (thys)
       AjPSeq thys
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
       AjPSeq seq

AjBool
ajSeqFindOutFormat (format, iformat)
       AjPStr format
       ajint& iformat
    OUTPUT:
       RETVAL
       iformat

AjBool
ajSeqTrim (thys)
       AjPSeq thys
    OUTPUT:
       RETVAL



#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_seq		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajseq.c: automatically generated

AjPSeq
ajSeqNew ()
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewNameC (txt, name)
       const char* txt
       const char* name
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewNameS (str, name)
       const AjPStr str
       const AjPStr name
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewRangeC (txt, offset, offend, rev)
       const char* txt
       ajint offset
       ajint offend
       AjBool rev
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewRangeS (str, offset, offend, rev)
       const AjPStr str
       ajint offset
       ajint offend
       AjBool rev
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewRes (size)
       size_t size
    OUTPUT:
       RETVAL

AjPSeq
ajSeqNewSeq (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

void
ajSeqAssignAccC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignAccS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignDescC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignDescS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignEntryC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignEntryS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignFileC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignFileS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignFullC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignFullS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignGiC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignGiS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignNameC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignNameS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignSeqC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignSeqLenC (seq, txt, len)
       AjPSeq seq
       const char* txt
       ajint len

void
ajSeqAssignSeqS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignSvC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignSvS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignUfoC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignUfoS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqAssignUsaC (seq, txt)
       AjPSeq seq
       const char* txt

void
ajSeqAssignUsaS (seq, str)
       AjPSeq seq
       const AjPStr str

void
ajSeqSetOffsets (seq, offset, origlen)
       AjPSeq seq
       ajint offset
       ajint origlen

void
ajSeqSetRange (seq, pos1, pos2)
       AjPSeq seq
       ajint pos1
       ajint pos2

void
ajSeqSetRangeRev (seq, pos1, pos2)
       AjPSeq seq
       ajint pos1
       ajint pos2

void
ajSeqComplementOnly (seq)
       AjPSeq seq

void
ajSeqFmtLower (seq)
       AjPSeq seq

void
ajSeqFmtUpper (seq)
       AjPSeq seq

void
ajSeqReverseDo (seq)
       AjPSeq seq

void
ajSeqReverseForce (seq)
       AjPSeq seq

void
ajSeqReverseOnly (seq)
       AjPSeq seq

const char*
ajSeqGetAccC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetAccS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetBegin (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetBeginTrue (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetDescC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetDescS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetEnd (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetEndTrue (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetEntryC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetEntryS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPFeattable
ajSeqGetFeat (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjPFeattable
ajSeqGetFeatCopy (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetGiC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetGiS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetLen (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetLenTrue (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetNameC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetNameS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetOffend (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetOffset (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqGetRange (seq, begin, end)
       const AjPSeq seq
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

AjBool
ajSeqGetRev (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetSeqC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetSeqS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

char*
ajSeqGetSeqCopyC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjPStr
ajSeqGetSeqCopyS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetSvC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetSvS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetTaxC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetTaxS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const char*
ajSeqGetUsaC (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqGetUsaS (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqIsNuc (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqIsProt (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqIsReversedTrue (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqIsReversed (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajSeqIsTrimmed (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqCalcCheckgcg (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

void
ajSeqCalcCount (seq, b)
       const AjPSeq seq
       ajint& b
    OUTPUT:
       b

ajuint
ajSeqCalcCrc (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

float
ajSeqCalcMolwt (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajSeqCalcTrueposMin (seq, imin, ipos)
       const AjPSeq seq
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajSeqCalcTruepos (seq, ipos)
       const AjPSeq seq
       ajint ipos
    OUTPUT:
       RETVAL

void
ajSeqExit ()

AjPSeqall
ajSeqallNew ()
    OUTPUT:
       RETVAL

void
ajSeqallDel (Pseq)
       AjPSeqall& Pseq
    OUTPUT:
       Pseq

void
ajSeqallSetRange (seq, ibegin, iend)
       AjPSeqall seq
       ajint ibegin
       ajint iend

void
ajSeqallSetRangeRev (seq, ibegin, iend)
       AjPSeqall seq
       ajint ibegin
       ajint iend

ajint
ajSeqallBegin (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

ajint
ajSeqallEnd (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqallGetFilename (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

ajint
ajSeqallLen (seqall)
       const AjPSeqall seqall
    OUTPUT:
       RETVAL

const AjPStr
ajSeqallGetName (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqallGetNameSeq (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

ajint
ajSeqallGetRange (seq, begin, end)
       const AjPSeqall seq
       ajint& begin
       ajint& end
    OUTPUT:
       RETVAL
       begin
       end

const AjPStr
ajSeqallGetUsa (seq)
       const AjPSeqall seq
    OUTPUT:
       RETVAL

AjPSeqset
ajSeqsetNew ()
    OUTPUT:
       RETVAL

void
ajSeqsetDel (Pseq)
       AjPSeqset& Pseq
    OUTPUT:
       Pseq

void
ajSeqsetDelarray (thys)
       AjPSeqset*& thys
    OUTPUT:
       thys

const AjPStr
ajSeqsetGetFilename (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetGetFormat (thys)
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

const AjPStr
ajSeqsetGetUsa (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetFill (seq)
       AjPSeqset seq
    OUTPUT:
       RETVAL

void
ajSeqsetReverse (thys)
       AjPSeqset thys

void
ajSeqsetSetRange (seq, ibegin, iend)
       AjPSeqset seq
       ajint ibegin
       ajint iend

void
ajSeqsetToLower (seqset)
       AjPSeqset seqset

void
ajSeqsetToUpper (seqset)
       AjPSeqset seqset

void
ajSeqsetTrim (seqset)
       AjPSeqset seqset

const AjPStr
ajSeqsetAcc (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

ajint
ajSeqsetBegin (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

ajint
ajSeqsetEnd (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

ajint
ajSeqsetLen (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetGetName (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

const AjPStr
ajSeqsetName (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

const char*
ajSeqsetSeq (seq, i)
       const AjPSeqset seq
       ajint i
    OUTPUT:
       RETVAL

const AjPSeq
ajSeqsetGetSeq (thys, i)
       const AjPSeqset thys
       ajint i
    OUTPUT:
       RETVAL

AjPSeq*
ajSeqsetGetSeqArray (thys)
       const AjPSeqset thys
    OUTPUT:
       RETVAL

ajint
ajSeqsetSize (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

float
ajSeqsetTotweight (seq)
       const AjPSeqset seq
    OUTPUT:
       RETVAL

float
ajSeqsetWeight (seq, i)
       const AjPSeqset seq
       ajint i
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

void
ajSeqDel (Pseq)
       AjPSeq& Pseq
    OUTPUT:
       Pseq

void
ajSeqClear (seq)
       AjPSeq seq

void
ajSeqallClear (seq)
       AjPSeqall seq

void
ajSeqMod (seq)
       AjPSeq seq

void
ajSeqTrace (seq)
       const AjPSeq seq

void
ajSeqTraceT (seq, title)
       const AjPSeq seq
       const char* title

AjBool
ajSeqNum (seq, cvt, numseq)
       const AjPSeq seq
       const AjPSeqCvt cvt
       AjPStr& numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajSeqNumS (seq, cvt, numseq)
       const AjPStr seq
       const AjPSeqCvt cvt
       AjPStr& numseq
    OUTPUT:
       RETVAL
       numseq

AjBool
ajSeqIsGarbage (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

void
ajSeqCvtTrace (cvt)
       const AjPSeqCvt cvt

AjPSeqCvt
ajSeqCvtNewZero (bases)
       const char* bases
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewZeroS (bases, n)
       AjPPStr bases
       int n
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNewZeroSS (bases, n, rbases, rn)
       AjPPStr bases
       int n
       AjPPStr rbases
       int rn
    OUTPUT:
       RETVAL

AjPSeqCvt
ajSeqCvtNew (bases)
       const char* bases
    OUTPUT:
       RETVAL

void
ajSeqCvtDel (Pcvt)
       AjPSeqCvt& Pcvt
    OUTPUT:
       Pcvt

AjPSeqCvt
ajSeqCvtNewText (bases)
       const char* bases
    OUTPUT:
       RETVAL

ajint
ajSeqCvtLen (cvt)
       const AjPSeqCvt cvt
    OUTPUT:
       RETVAL

ajint
ajSeqCvtK (cvt, ch)
       const AjPSeqCvt cvt
       char ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKS (cvt, ch)
       const AjPSeqCvt cvt
       const AjPStr ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKSRow (cvt, ch)
       const AjPSeqCvt cvt
       const AjPStr ch
    OUTPUT:
       RETVAL

ajint
ajSeqCvtKSColumn (cvt, ch)
       const AjPSeqCvt cvt
       const AjPStr ch
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

void
ajSeqoutDel (Pseqout)
       AjPSeqout& Pseqout
    OUTPUT:
       Pseqout

AjBool
ajSeqTrim (thys)
       AjPSeq thys
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
    OUTPUT:
       thys

void
ajSeqGapStandardS (thys, gapch)
       AjPStr thys
       char gapch
    OUTPUT:
       thys

ajint
ajSeqFill (seq, len)
       AjPSeq seq
       ajint len
    OUTPUT:
       RETVAL

void
ajSeqDefName (thys, setname, multi)
       AjPSeq thys
       const AjPStr setname
       AjBool multi
    OUTPUT:
       thys

char
ajSeqBaseComp (base)
       char base
    OUTPUT:
       RETVAL

AjBool
ajIsAccession (accnum)
       const AjPStr accnum
    OUTPUT:
       RETVAL

const AjPStr
ajIsSeqversion (sv)
       const AjPStr sv
    OUTPUT:
       RETVAL

void
ajSeqstrReverse (pthis)
       AjPStr& pthis

void
ajSeqstrComplementOnly (pthis)
       AjPStr& pthis

float
ajSeqstrCalcMolwt (seq)
       const AjPStr seq
    OUTPUT:
       RETVAL

ajuint
ajSeqstrCalcCrc (seq)
       const AjPStr seq
    OUTPUT:
       RETVAL

void
ajSeqGarbageOn (thys)
       AjPSeq & thys

void
ajSeqGarbageOff (thys)
       AjPSeq & thys


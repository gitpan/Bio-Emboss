#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_feat		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajfeat.h: automatically generated

AjBool
ajFeatIsChild (gf)
       const AjPFeature gf
    OUTPUT:
       RETVAL

AjPFeature
ajFeatCopy (orig)
       const AjPFeature orig
    OUTPUT:
       RETVAL

void
ajFeatDel (pthis)
       AjPFeature &pthis
    OUTPUT:
       pthis

void
ajFeatExit ()

ajint
ajFeatGetEnd (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatGetForward (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL

ajint
ajFeatGetFrame (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL


AjBool
ajFeatGetNote (thys, name, val)
       const AjPFeature thys
       const AjPStr name
       AjPStr& val
    OUTPUT:
       RETVAL
       val

AjBool
ajFeatGetNoteI (thys, name, count, val)
       const AjPFeature thys
       const AjPStr name
       ajint count
       AjPStr& val
    OUTPUT:
       RETVAL
       val

ajint
ajFeatGetStart (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatGetTag (thys, name, num, val)
       const AjPFeature thys
       const AjPStr name
       ajint num
       AjPStr& val
    OUTPUT:
       RETVAL
       val


AjPStr
ajFeatGetType (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatIsCompMult (gf)
       const AjPFeature gf
    OUTPUT:
       RETVAL

AjBool
ajFeatIsLocal (gf)
       const AjPFeature gf
    OUTPUT:
       RETVAL

AjBool
ajFeatIsLocalRange (gf, start, end)
       const AjPFeature gf
       ajint start
       ajint end
    OUTPUT:
       RETVAL

AjBool
ajFeatIsMultiple (gf)
       const AjPFeature gf
    OUTPUT:
       RETVAL

AjBool
ajFeatLocToSeq (seq, line, res, usa)
       const AjPStr seq
       const AjPStr line
       AjPStr &res
       const AjPStr usa
    OUTPUT:
       RETVAL
       res

AjPFeature
ajFeatNew (thys, source, type, Start, End, score, strand, frame)
       AjPFeattable thys
       const AjPStr source
       const AjPStr type
       ajint Start
       ajint End
       float score
       char strand
       ajint frame
    OUTPUT:
       RETVAL

AjPFeature
ajFeatNewII (thys, Start, End)
       AjPFeattable thys
       ajint Start
       ajint End
    OUTPUT:
       RETVAL

AjPFeature
ajFeatNewIIRev (thys, Start, End)
       AjPFeattable thys
       ajint Start
       ajint End
    OUTPUT:
       RETVAL

AjPFeature
ajFeatNewProt (thys, source, type, Start, End, score)
       AjPFeattable thys
       const AjPStr source
       const AjPStr type
       ajint Start
       ajint End
       float score
    OUTPUT:
       RETVAL

AjBool
ajFeatOutFormatDefault (pformat)
       AjPStr& pformat
    OUTPUT:
       RETVAL
       pformat

AjPFeattable
ajFeatRead (ftin)
       AjPFeattabIn ftin
    OUTPUT:
       RETVAL

void
ajFeatReverse (thys, ilen)
       AjPFeature thys
       ajint ilen

AjBool
ajFeatSetDesc (thys, desc)
       AjPFeature thys
       const AjPStr desc
    OUTPUT:
       RETVAL

AjBool
ajFeatSetDescApp (thys, desc)
       AjPFeature thys
       const AjPStr desc
    OUTPUT:
       RETVAL

void
ajFeatSortByEnd (Feattab)
       AjPFeattable Feattab

void
ajFeatSortByStart (Feattab)
       AjPFeattable Feattab

void
ajFeatSortByType (Feattab)
       AjPFeattable Feattab

void
ajFeattableAdd (thys, feature)
       AjPFeattable thys
       AjPFeature feature

ajint
ajFeattableBegin (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

void
ajFeattableClear (thys)
       AjPFeattable thys

AjPFeattable
ajFeattableCopy (orig)
       const AjPFeattable orig
    OUTPUT:
       RETVAL

void
ajFeattableDel (pthis)
       AjPFeattable &pthis
    OUTPUT:
       pthis

ajint
ajFeattableEnd (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

AjPStr
ajFeattableGetName (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

AjBool
ajFeattableIsNuc (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

AjBool
ajFeattableIsProt (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

ajint
ajFeattableLen (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNew (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewDna (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewProt (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewSeq (seq)
       const AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajFeattablePos (thys, ipos)
       const AjPFeattable thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajFeattablePosI (thys, imin, ipos)
       const AjPFeattable thys
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajFeattablePosII (ilen, imin, ipos)
       ajint ilen
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

void
ajFeattableReverse (thys)
       AjPFeattable  thys

void
ajFeattableSetDna (thys)
       AjPFeattable thys

void
ajFeattableSetProt (thys)
       AjPFeattable thys

void
ajFeattableSetRange (thys, fbegin, fend)
       AjPFeattable thys
       ajint fbegin
       ajint fend

ajint
ajFeattableSize (thys)
       const AjPFeattable thys
    OUTPUT:
       RETVAL

void
ajFeattableTrace (thys)
       const AjPFeattable thys

AjBool
ajFeattableTrimOff (thys, ioffset, ilen)
       AjPFeattable thys
       ajint ioffset
       ajint ilen
    OUTPUT:
       RETVAL

AjBool
ajFeattableWrite (thys, ufo)
       AjPFeattable thys
       const AjPStr ufo
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteDdbj (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteEmbl (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteGenbank (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteGff (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWritePir (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteSwiss (features, file)
       const AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

void
ajFeattabInClear (thys)
       AjPFeattabIn thys

void
ajFeattabInDel (pthis)
       AjPFeattabIn& pthis
    OUTPUT:
       pthis

AjPFeattabIn
ajFeattabInNew ()
    OUTPUT:
       RETVAL

AjPFeattabIn
ajFeattabInNewSS (fmt, name, type)
       const AjPStr fmt
       const AjPStr name
       const char* type
    OUTPUT:
       RETVAL

AjPFeattabIn
ajFeattabInNewSSF (fmt, name, type, buff)
       const AjPStr fmt
       const AjPStr name
       const char* type
       AjPFileBuff buff
    OUTPUT:
       RETVAL

AjBool
ajFeattabInSetType (thys, type)
       AjPFeattabIn thys
       const AjPStr type
    OUTPUT:
       RETVAL

AjBool
ajFeattabInSetTypeC (thys, type)
       AjPFeattabIn thys
       const char* type
    OUTPUT:
       RETVAL

void
ajFeattabOutDel (pthis)
       AjPFeattabOut& pthis
    OUTPUT:
       pthis

AjPFile
ajFeattabOutFile (thys)
       const AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjPStr
ajFeattabOutFilename (thys)
       const AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutIsLocal (thys)
       const AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutIsOpen (thys)
       const AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjPFeattabOut
ajFeattabOutNew ()
    OUTPUT:
       RETVAL

AjPFeattabOut
ajFeattabOutNewSSF (fmt, name, type, buff)
       const AjPStr fmt
       const AjPStr name
       const char* type
       AjPFile buff
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutOpen (thys, ufo)
       AjPFeattabOut thys
       const AjPStr ufo
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutSet (thys, ufo)
       AjPFeattabOut thys
       const AjPStr ufo
    OUTPUT:
       RETVAL

void
ajFeattabOutSetBasename (thys, basename)
       AjPFeattabOut thys
       const AjPStr basename

AjBool
ajFeattabOutSetType (thys, type)
       AjPFeattabOut thys
       const AjPStr type
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutSetTypeC (thys, type)
       AjPFeattabOut thys
       const char* type
    OUTPUT:
       RETVAL

AjBool
ajFeatTagAdd (thys, tag, value)
       AjPFeature thys
       const AjPStr tag
       const AjPStr value
    OUTPUT:
       RETVAL

AjBool
ajFeatTagAddC (thys, tag, value)
       AjPFeature thys
       const char* tag
       const AjPStr value
    OUTPUT:
       RETVAL

AjBool
ajFeatTagAddCC (thys, tag, value)
       AjPFeature thys
       const char* tag
       const char* value
    OUTPUT:
       RETVAL

AjIList
ajFeatTagIter (thys)
       const AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatTagSet (thys, tag, value)
       AjPFeature thys
       const AjPStr tag
       const AjPStr value
    OUTPUT:
       RETVAL

AjBool
ajFeatTagSetC (thys, tag, value)
       AjPFeature thys
       const char* tag
       const AjPStr value
    OUTPUT:
       RETVAL

void
ajFeatTagTrace (thys)
       const AjPFeature thys

AjBool
ajFeatTagval (iter, tagnam, tagval)
       AjIList iter
       AjPStr& tagnam
       AjPStr& tagval
    OUTPUT:
       RETVAL
       tagnam
       tagval

void
ajFeatTest ()

void
ajFeatTrace (thys)
       const AjPFeature thys

AjBool
ajFeatTrimOffRange (ft, ioffset, begin, end, dobegin, doend)
       AjPFeature ft
       ajint ioffset
       ajint begin
       ajint end
       AjBool dobegin
       AjBool doend
    OUTPUT:
       RETVAL

AjPFeattable
ajFeatUfoRead (tabin, Ufo)
       AjPFeattabIn tabin
       const AjPStr Ufo
    OUTPUT:
       RETVAL

AjBool
ajFeatUfoWrite (thys, tabout, Ufo)
       const AjPFeattable thys
       AjPFeattabOut tabout
       const AjPStr Ufo
    OUTPUT:
       RETVAL

AjBool
ajFeatWrite (ftout, ft)
       AjPFeattabOut ftout
       const AjPFeattable ft
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_feat		PACKAGE = Bio::Emboss		

 # code from ajfeat.h: automatically generated

AjPFeature
ajFeatAdd (thys, type, start, end, score, strand, frame, desc)
       AjPFeattable thys
       AjPStr type
       ajint start
       ajint end
       float score
       char strand
       ajint frame
       AjPStr desc
    OUTPUT:
       RETVAL

AjPFeature
ajFeatAddC (thys, type, start, end, score, strand, frame, desc)
       AjPFeattable thys
       char* type
       ajint start
       ajint end
       float score
       char strand
       ajint frame
       AjPStr desc
    OUTPUT:
       RETVAL

AjBool
ajFeatIsChild (gf)
       AjPFeature gf
    OUTPUT:
       RETVAL

void *
ajFeatClearTag (thys, table, tag)
       AjPFeature thys
       AjPFeattable table
       AjPStr tag
    OUTPUT:
       RETVAL

AjBool
ajFeatIsCompMult (gf)
       AjPFeature gf
    OUTPUT:
       RETVAL

void
ajFeatCopy (pthys, orig)
       AjPFeature& pthys
       AjPFeature orig
    OUTPUT:
       pthys

void
ajFeatDel (pthis)
       AjPFeature &pthis
    OUTPUT:
       pthis

void
ajFeatExit ()

ajint
ajFeatGetEnd (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatGetForward (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

ajint
ajFeatGetFrame (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

ajint
ajFeatGetLocs (str, cds, type)
       AjPStr str
       AjPStr *&cds
       char *type
    OUTPUT:
       RETVAL
       cds

AjBool
ajFeatGetNote (thys, name, val)
       AjPFeature thys
       AjPStr name
       AjPStr& val
    OUTPUT:
       RETVAL
       val

AjBool
ajFeatGetNoteI (thys, name, count, val)
       AjPFeature thys
       AjPStr name
       ajint count
       AjPStr& val
    OUTPUT:
       RETVAL
       val

ajint
ajFeatGetStart (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

AjBool
ajFeatGetTag (thys, name, num, val)
       AjPFeature thys
       AjPStr name
       ajint num
       AjPStr& val
    OUTPUT:
       RETVAL
       val

AjPStr
ajFeatGetType (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

ajint
ajFeatGetTrans (str, cds)
       AjPStr str
       AjPStr *&cds
    OUTPUT:
       RETVAL
       cds

AjBool
ajFeatIsLocal (gf)
       AjPFeature gf
    OUTPUT:
       RETVAL

AjBool
ajFeatIsLocalRange (gf, start, end)
       AjPFeature gf
       ajint start
       ajint end
    OUTPUT:
       RETVAL

AjBool
ajFeatIsMultiple (gf)
       AjPFeature gf
    OUTPUT:
       RETVAL

AjBool
ajFeatLocToSeq (seq, line, res, usa)
       AjPStr seq
       AjPStr line
       AjPStr &res
       AjPStr usa
    OUTPUT:
       RETVAL
       res

AjPFeature
ajFeatNew (thys, source, type, Start, End, score, strand, frame)
       AjPFeattable thys
       AjPStr source
       AjPStr type
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
ajFeatNewProt (thys, source, type, Start, End, score)
       AjPFeattable thys
       AjPStr source
       AjPStr type
       ajint Start
       ajint End
       float score
    OUTPUT:
       RETVAL

AjPFeattable
ajFeatRead (ftin)
       AjPFeattabIn ftin
    OUTPUT:
       RETVAL

void
ajFeatReverse (thys)
       AjPFeature thys

AjBool
ajFeatSetDesc (thys, desc)
       AjPFeature thys
       AjPStr desc
    OUTPUT:
       RETVAL

AjBool
ajFeatSetDescApp (thys, desc)
       AjPFeature thys
       AjPStr desc
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
       AjPFeattable thys
    OUTPUT:
       RETVAL

void
ajFeattableClear (thys)
       AjPFeattable thys

void
ajFeattableCopy (pthys, orig)
       AjPFeattable& pthys
       AjPFeattable orig
    OUTPUT:
       pthys

void
ajFeattableDel (pthis)
       AjPFeattable &pthis
    OUTPUT:
       pthis

ajint
ajFeattableEnd (thys)
       AjPFeattable thys
    OUTPUT:
       RETVAL

AjPStr
ajFeattableGetName (thys)
       AjPFeattable thys
    OUTPUT:
       RETVAL

AjBool
ajFeattableIsNuc (thys)
       AjPFeattable thys
    OUTPUT:
       RETVAL

AjBool
ajFeattableIsProt (thys)
       AjPFeattable thys
    OUTPUT:
       RETVAL

ajint
ajFeattableLen (thys)
       AjPFeattable thys
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNew (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewDna (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewProt (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattableNewSeq (seq)
       AjPSeq seq
    OUTPUT:
       RETVAL

ajint
ajFeattablePos (thys, ipos)
       AjPFeattable thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajFeattablePosI (thys, imin, ipos)
       AjPFeattable thys
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
       AjPFeattable thys

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
       AjPFeattable thys
    OUTPUT:
       RETVAL

void
ajFeattableTrace (thys)
       AjPFeattable thys

AjBool
ajFeattableWriteDdbj (features, file)
       AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteEmbl (features, file)
       AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteGenbank (features, file)
       AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteGff (features, file)
       AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWritePir (features, file)
       AjPFeattable features
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFeattableWriteSwiss (features, file)
       AjPFeattable features
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
       AjPStr fmt
       AjPStr name
       char* type
    OUTPUT:
       RETVAL

AjPFeattabIn
ajFeattabInNewSSF (fmt, name, type, buff)
       AjPStr fmt
       AjPStr name
       char* type
       AjPFileBuff buff
    OUTPUT:
       RETVAL

void
ajFeattabOutDel (pthis)
       AjPFeattabOut& pthis
    OUTPUT:
       pthis

AjPFile
ajFeattabOutFile (thys)
       AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjPStr
ajFeattabOutFilename (thys)
       AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutIsOpen (thys)
       AjPFeattabOut thys
    OUTPUT:
       RETVAL

AjPFeattabOut
ajFeattabOutNew ()
    OUTPUT:
       RETVAL

AjPFeattabOut
ajFeattabOutNewSSF (fmt, name, type, buff)
       AjPStr fmt
       AjPStr name
       char* type
       AjPFile buff
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutOpen (thys, ufo)
       AjPFeattabOut thys
       AjPStr ufo
    OUTPUT:
       RETVAL

AjBool
ajFeattabOutSet (thys, ufo)
       AjPFeattabOut thys
       AjPStr ufo
    OUTPUT:
       RETVAL

AjPFeattable
ajFeattabRead (ftin)
       AjPFeattabIn ftin
    OUTPUT:
       RETVAL

void
ajFeatTagAdd (thys, tag, value)
       AjPFeature thys
       AjPStr tag
       AjPStr value

void
ajFeatTagAddC (thys, tag, value)
       AjPFeature thys
       char* tag
       AjPStr value

void
ajFeatTagAddCC (thys, tag, value)
       AjPFeature thys
       char* tag
       char* value

AjIList
ajFeatTagIter (thys)
       AjPFeature thys
    OUTPUT:
       RETVAL

AjPStr
ajFeatTagSet (thys, tag, value)
       AjPFeature thys
       AjPStr tag
       AjPStr value
    OUTPUT:
       RETVAL

AjPStr
ajFeatTagSetC (thys, tag, value)
       AjPFeature thys
       char* tag
       AjPStr value
    OUTPUT:
       RETVAL

void
ajFeatTagTrace (thys)
       AjPFeature thys

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
       AjPFeature thys

void
ajFeatTraceOld (thys)
       AjPFeattable thys

AjBool
ajFeatUfoRead (pthis, tabin, Ufo)
       AjPFeattable& pthis
       AjPFeattabIn tabin
       AjPStr Ufo
    OUTPUT:
       RETVAL
       pthis

AjBool
ajFeatUfoWrite (thys, tabout, Ufo)
       AjPFeattable thys
       AjPFeattabOut tabout
       AjPStr Ufo
    OUTPUT:
       RETVAL

AjBool
ajFeatWrite (ftout, ft)
       AjPFeattabOut ftout
       AjPFeattable ft
    OUTPUT:
       RETVAL


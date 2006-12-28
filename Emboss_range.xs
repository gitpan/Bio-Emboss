#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_range		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajrange.c: automatically generated

AjPRange
ajRangeNewI (n)
       ajint n
    OUTPUT:
       RETVAL

AjPRange
ajRangeCopy (src)
       const AjPRange src
    OUTPUT:
       RETVAL

void
ajRangeDel (thys)
       AjPRange & thys
    OUTPUT:
       thys

AjPRange
ajRangeGet (str)
       const AjPStr str
    OUTPUT:
       RETVAL

AjPRange
ajRangeGetLimits (str, imin, imax, minsize, size)
       const AjPStr str
       ajint imin
       ajint imax
       ajint minsize
       ajint size
    OUTPUT:
       RETVAL

AjPRange
ajRangeFile (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPRange
ajRangeFileLimits (name, imin, imax, minsize, size)
       const AjPStr name
       ajint imin
       ajint imax
       ajint minsize
       ajint size
    OUTPUT:
       RETVAL

ajint
ajRangeNumber (thys)
       const AjPRange thys
    OUTPUT:
       RETVAL

AjBool
ajRangeValues (thys, element, start, end)
       const AjPRange thys
       ajint element
       ajint & start
       ajint & end
    OUTPUT:
       RETVAL
       start
       end

AjBool
ajRangeText (thys, element, text)
       const AjPRange thys
       ajint element
       AjPStr & text
    OUTPUT:
       RETVAL
       text

AjBool
ajRangeChange (thys, element, start, end)
       AjPRange thys
       ajint element
       ajint start
       ajint end
    OUTPUT:
       RETVAL
       thys

AjBool
ajRangeBegin (thys, begin)
       AjPRange thys
       ajint begin
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqExtractList (thys, seq, outliststr)
       const AjPRange thys
       const AjPSeq seq
       AjPList outliststr
    OUTPUT:
       RETVAL
       outliststr

AjBool
ajRangeSeqExtract (thys, seq)
       const AjPRange thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqStuff (thys, seq)
       const AjPRange thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqMask (thys, maskchar, seq)
       const AjPRange thys
       const AjPStr maskchar
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqToLower (thys, seq)
       const AjPRange thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeStrExtractList (thys, instr, outliststr)
       const AjPRange thys
       const AjPStr instr
       AjPList outliststr
    OUTPUT:
       RETVAL
       outliststr

AjBool
ajRangeStrExtract (thys, instr, outstr)
       const AjPRange thys
       const AjPStr instr
       AjPStr & outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrStuff (thys, instr, outstr)
       const AjPRange thys
       const AjPStr instr
       AjPStr & outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrMask (thys, maskchar, str)
       const AjPRange thys
       const AjPStr maskchar
       AjPStr & str
    OUTPUT:
       RETVAL
       str

AjBool
ajRangeStrToLower (thys, str)
       const AjPRange thys
       AjPStr & str
    OUTPUT:
       RETVAL
       str

ajint
ajRangeOverlapSingle (start, end, pos, length)
       ajint start
       ajint end
       ajint pos
       ajint length
    OUTPUT:
       RETVAL

ajint
ajRangeOverlaps (thys, pos, length)
       const AjPRange thys
       ajint pos
       ajint length
    OUTPUT:
       RETVAL

AjBool
ajRangeOrdered (thys)
       const AjPRange thys
    OUTPUT:
       RETVAL

AjBool
ajRangeDefault (thys, s)
       const AjPRange thys
       const AjPSeq s
    OUTPUT:
       RETVAL


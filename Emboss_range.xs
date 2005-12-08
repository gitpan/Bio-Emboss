#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_range		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajrange.h: automatically generated

AjBool
ajRangeBegin (thys, begin)
       AjPRange  thys
       ajint begin
    OUTPUT:
       RETVAL

AjBool
ajRangeChange (thys, element, start, end)
       AjPRange  thys
       ajint element
       ajint start
       ajint end
    OUTPUT:
       RETVAL

AjPRange
ajRangeCopy (src)
       const AjPRange  src
    OUTPUT:
       RETVAL

AjBool
ajRangeDefault (thys, s)
       const AjPRange  thys
       const AjPSeq s
    OUTPUT:
       RETVAL

void
ajRangeDel (thys)
       AjPRange  &thys
    OUTPUT:
       thys

AjPRange
ajRangeFile (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPRange
ajRangeGet (s)
       const AjPStr s
    OUTPUT:
       RETVAL

AjPRange
ajRangeNewI (n)
       ajint n
    OUTPUT:
       RETVAL

ajint
ajRangeNumber (thys)
       const AjPRange  thys
    OUTPUT:
       RETVAL

AjBool
ajRangeOrdered (thys)
       const AjPRange  thys
    OUTPUT:
       RETVAL

ajint
ajRangeOverlaps (thys, pos, length)
       const AjPRange  thys
       ajint pos
       ajint length
    OUTPUT:
       RETVAL

ajint
ajRangeOverlapSingle (start, end, pos, length)
       ajint start
       ajint end
       ajint pos
       ajint length
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqExtract (thys, seq)
       const AjPRange  thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqExtractList (thys, seq, outliststr)
       const AjPRange  thys
       const AjPSeq seq
       AjPList outliststr
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqMask (thys, maskchar, seq)
       const AjPRange  thys
       const AjPStr maskchar
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqStuff (thys, seq)
       const AjPRange  thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeSeqToLower (thys, seq)
       const AjPRange  thys
       AjPSeq seq
    OUTPUT:
       RETVAL

AjBool
ajRangeStrExtract (thys, instr, outstr)
       const AjPRange  thys
       const AjPStr instr
       AjPStr &outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrExtractList (thys, instr, outliststr)
       const AjPRange  thys
       const AjPStr instr
       AjPList outliststr
    OUTPUT:
       RETVAL

AjBool
ajRangeStrMask (thys, maskchar, str)
       const AjPRange  thys
       const AjPStr maskchar
       AjPStr &str
    OUTPUT:
       RETVAL
       str

AjBool
ajRangeStrStuff (thys, instr, outstr)
       const AjPRange  thys
       const AjPStr instr
       AjPStr &outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrToLower (thys, str)
       const AjPRange  thys
       AjPStr &str
    OUTPUT:
       RETVAL
       str

AjBool
ajRangeText (thys, element, text)
       const AjPRange  thys
       ajint element
       AjPStr & text
    OUTPUT:
       RETVAL
       text

AjBool
ajRangeValues (thys, element, start, end)
       const AjPRange  thys
       ajint element
       ajint &start
       ajint &end
    OUTPUT:
       RETVAL
       start
       end


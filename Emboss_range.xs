#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_range		PACKAGE = Bio::Emboss		

 # code from ajrange.h: automatically generated

AjPRange
ajRangeNewI (n)
       ajint n
    OUTPUT:
       RETVAL

AjBool
ajRangeDefault (thys, s)
       AjPRange thys
       AjPStr s
    OUTPUT:
       RETVAL

void
ajRangeDel (thys)
       AjPRange &thys
    OUTPUT:
       thys

AjBool
ajRangeGet (r, s)
       AjPRange &r
       AjPStr s
    OUTPUT:
       RETVAL
       r

AjBool
ajRangeFile (r, name)
       AjPRange &r
       AjPStr name
    OUTPUT:
       RETVAL
       r

ajint
ajRangeNumber (thys)
       AjPRange thys
    OUTPUT:
       RETVAL

AjBool
ajRangeText (thys, element, text)
       AjPRange thys
       ajint element
       AjPStr & text
    OUTPUT:
       RETVAL
       text

AjBool
ajRangeValues (thys, element, start, end)
       AjPRange thys
       ajint element
       ajint &start
       ajint &end
    OUTPUT:
       RETVAL
       start
       end

AjBool
ajRangeChange (thys, element, start, end)
       AjPRange thys
       ajint element
       ajint start
       ajint end
    OUTPUT:
       RETVAL

AjBool
ajRangeBegin (thys, begin)
       AjPRange thys
       ajint begin
    OUTPUT:
       RETVAL

AjBool
ajRangeStrExtractList (outliststr, thys, instr)
       AjPList outliststr
       AjPRange thys
       AjPStr instr
    OUTPUT:
       RETVAL

AjBool
ajRangeStrExtract (outstr, thys, instr)
       AjPStr &outstr
       AjPRange thys
       AjPStr instr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrStuff (outstr, thys, instr)
       AjPStr &outstr
       AjPRange thys
       AjPStr instr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrMask (str, thys, maskchar)
       AjPStr &str
       AjPRange thys
       AjPStr maskchar
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
       AjPRange thys
       ajint pos
       ajint length
    OUTPUT:
       RETVAL

AjBool
ajRangeOrdered (thys)
       AjPRange thys
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_range		PACKAGE = Bio::Emboss		

 # code from ajrange.h: automatically generated

AjPRange
ajRangeNewI (n)
       ajint n
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_10_0

AjBool
ajRangeDefault (thys, s)
       AjPRange thys
       AjPSeq s
    OUTPUT:
       RETVAL

#else

AjBool
ajRangeDefault (thys, s)
       AjPRange thys
       AjPStr s
    OUTPUT:
       RETVAL

#endif

void
ajRangeDel (thys)
       AjPRange &thys
    OUTPUT:
       thys

#ifdef HAVE_EMBOSS_2_9_0

AjPRange 
ajRangeGet (s)
       const AjPStr s
    OUTPUT:
       RETVAL

AjPRange 
ajRangeFile (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjBool
ajRangeStrExtract (thys, instr, outstr)
       const AjPRange thys
       const AjPStr instr
       AjPStr &outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrExtractList (thys, instr, outliststr)
       const AjPRange thys
       const AjPStr instr
       AjPList outliststr
    OUTPUT:
       RETVAL

AjBool
ajRangeStrStuff (thys, instr, outstr)
       const AjPRange thys
       const AjPStr instr
       AjPStr &outstr
    OUTPUT:
       RETVAL
       outstr

AjBool
ajRangeStrMask (thys, maskchar, str)
       const AjPRange thys
       const AjPStr maskchar
       AjPStr &str
    OUTPUT:
       RETVAL
       str

#else

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

#endif

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


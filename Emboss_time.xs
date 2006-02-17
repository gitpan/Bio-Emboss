#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_time		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajtime.h: automatically generated


AjPTime
ajTimeToday ()
    OUTPUT:
       RETVAL

AjPTime
ajTimeTodayF (timefmt)
       const char* timefmt
    OUTPUT:
       RETVAL

const AjPTime
ajTimeTodayRef ()
    OUTPUT:
       RETVAL

const AjPTime
ajTimeTodayRefF (timefmt)
       const char* timefmt
    OUTPUT:
       RETVAL

void
ajTimeTrace (thys)
       const AjPTime  thys

AjPTime
ajTimeSet (timefmt, mday, mon, year)
        const char *timefmt
       ajint mday
       ajint mon
       ajint year
    OUTPUT:
       RETVAL

AjPTime
ajTimeNew ()
    OUTPUT:
       RETVAL

void
ajTimeDel (thys)
       AjPTime  &thys
    OUTPUT:
       thys


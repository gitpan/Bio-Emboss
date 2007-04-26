#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_time		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajtime.c: automatically generated

const AjPTime
ajTimeTodayRef ()
    OUTPUT:
       RETVAL

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
ajTimeTodayRefF (timefmt)
       const char* timefmt
    OUTPUT:
       RETVAL

void
ajTimeTrace (thys)
       const AjPTime thys

AjPTime
ajTimeSet (timefmt, mday, mon, year)
       const char* timefmt
       ajint mday
       ajint mon
       ajint year
    OUTPUT:
       RETVAL

AjBool
ajTimeSetS (thys, timestr)
       AjPTime thys
       const char* timestr
    OUTPUT:
       RETVAL
       thys

AjBool
ajTimeLocal (timer, thys)
       const time_t timer
       AjPTime thys
    OUTPUT:
       RETVAL
       thys

AjPTime
ajTimeNew ()
    OUTPUT:
       RETVAL

void
ajTimeDel (thys)
       AjPTime& thys
    OUTPUT:
       thys

void
ajTimeExit ()

time_t
ajTimeMake (thys)
       const AjPTime thys
    OUTPUT:
       RETVAL


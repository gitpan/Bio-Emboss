#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_sort		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajsort.c: automatically generated

void
ajSortFloatDecI (a, p, n)
       const float* a
       ajint& p
       ajint n

void
ajSortIntDecI (a, p, n)
       const ajint* a
       ajint& p
       ajint n

void
ajSortFloatIncI (a, p, n)
       const float* a
       ajint& p
       ajint n

void
ajSortIntIncI (a, p, n)
       const ajint* a
       ajint& p
       ajint n

void
ajSortTwoIntIncI (a, p, n)
       ajint& a
       ajint& p
       ajint n

void
ajSortFloatDec (a, n)
       float& a
       ajint n

void
ajSortIntDec (a, n)
       ajint& a
       ajint n

void
ajSortFloatInc (a, n)
       float& a
       ajint n

void
ajSortIntInc (a, n)
       ajint& a
       ajint n


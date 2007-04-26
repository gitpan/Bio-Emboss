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
       ajuint& p
       ajuint n

void
ajSortIntDecI (a, p, n)
       const ajint* a
       ajuint& p
       ajuint n

void
ajSortFloatIncI (a, p, n)
       const float* a
       ajuint& p
       ajuint n

void
ajSortIntIncI (a, p, n)
       const ajint* a
       ajuint& p
       ajuint n

void
ajSortTwoIntIncI (a, p, n)
       ajint& a
       ajuint& p
       ajuint n

void
ajSortFloatDec (a, n)
       float& a
       ajuint n

void
ajSortIntDec (a, n)
       ajint& a
       ajuint n

void
ajSortFloatInc (a, n)
       float& a
       ajuint n

void
ajSortIntInc (a, n)
       ajint& a
       ajuint n

void
ajSortUintDecI (a, p, n)
       const ajuint* a
       ajuint& p
       ajuint n

void
ajSortUintIncI (a, p, n)
       const ajuint* a
       ajuint& p
       ajuint n

void
ajSortTwoUintIncI (a, p, n)
       ajuint& a
       ajuint& p
       ajuint n

void
ajSortUintDec (a, n)
       ajuint& a
       ajuint n

void
ajSortUintInc (a, n)
       ajuint& a
       ajuint n


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_arr		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajarr.c: automatically generated

AjPChar
ajChararrNew ()
    OUTPUT:
       RETVAL

AjPChar
ajChararrNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajChararrDel (thys)
       AjPChar& thys
    OUTPUT:
       thys

char
ajChararrGet (thys, elem)
       const AjPChar thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajChararrPut (thys, elem, v)
       AjPChar& thys
       ajint elem
       char v
    OUTPUT:
       RETVAL
       thys

char*
ajChararrChararr (thys)
       const AjPChar thys
    OUTPUT:
       RETVAL

AjPInt
ajIntNew ()
    OUTPUT:
       RETVAL

AjPInt
ajIntNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajIntDel (thys)
       AjPInt& thys
    OUTPUT:
       thys

ajint
ajIntGet (thys, elem)
       const AjPInt thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajIntPut (thys, elem, v)
       AjPInt& thys
       ajint elem
       ajint v
    OUTPUT:
       RETVAL
       thys

void
ajIntInc (thys, elem)
       AjPInt& thys
       ajint elem
    OUTPUT:
       thys

void
ajIntDec (thys, elem)
       AjPInt& thys
       ajint elem
    OUTPUT:
       thys

ajint*
ajIntInt (thys)
       const AjPInt thys
    OUTPUT:
       RETVAL

ajint
ajIntLen (thys)
       const AjPInt thys
    OUTPUT:
       RETVAL

AjPFloat
ajFloatNew ()
    OUTPUT:
       RETVAL

AjPFloat
ajFloatNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajFloatDel (thys)
       AjPFloat& thys
    OUTPUT:
       thys

float
ajFloatGet (thys, elem)
       const AjPFloat thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajFloatPut (thys, elem, v)
       AjPFloat& thys
       ajint elem
       float v
    OUTPUT:
       RETVAL
       thys

float*
ajFloatFloat (thys)
       const AjPFloat thys
    OUTPUT:
       RETVAL

ajint
ajFloatLen (thys)
       const AjPFloat thys
    OUTPUT:
       RETVAL

AjPDouble
ajDoubleNew ()
    OUTPUT:
       RETVAL

AjPDouble
ajDoubleNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajDoubleDel (thys)
       AjPDouble& thys
    OUTPUT:
       thys

double
ajDoubleGet (thys, elem)
       const AjPDouble thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajDoublePut (thys, elem, v)
       AjPDouble& thys
       ajint elem
       double v
    OUTPUT:
       RETVAL
       thys

double*
ajDoubleDouble (thys)
       const AjPDouble thys
    OUTPUT:
       RETVAL

ajint
ajDoubleLen (thys)
       const AjPDouble thys
    OUTPUT:
       RETVAL

AjPShort
ajShortNew ()
    OUTPUT:
       RETVAL

AjPShort
ajShortNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajShortDel (thys)
       AjPShort& thys
    OUTPUT:
       thys

short
ajShortGet (thys, elem)
       const AjPShort thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajShortPut (thys, elem, v)
       AjPShort& thys
       ajint elem
       short v
    OUTPUT:
       RETVAL
       thys

short*
ajShortShort (thys)
       const AjPShort thys
    OUTPUT:
       RETVAL

ajint
ajShortLen (thys)
       const AjPShort thys
    OUTPUT:
       RETVAL

AjPLong
ajLongNew ()
    OUTPUT:
       RETVAL

AjPLong
ajLongNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajLongDel (thys)
       AjPLong& thys
    OUTPUT:
       thys

ajlong
ajLongGet (thys, elem)
       const AjPLong thys
       ajint elem
    OUTPUT:
       RETVAL

AjBool
ajLongPut (thys, elem, v)
       AjPLong& thys
       ajint elem
       ajlong v
    OUTPUT:
       RETVAL
       thys

ajlong*
ajLongLong (thys)
       const AjPLong thys
    OUTPUT:
       RETVAL

ajlong
ajLongLen (thys)
       const AjPLong thys
    OUTPUT:
       RETVAL

AjBool
ajFloatParse (str, array)
       const AjPStr str
       AjPFloat& array
    OUTPUT:
       RETVAL
       array

void
ajFloatStr (array, precision, str)
       const AjPFloat array
       ajint precision
       AjPStr& str
    OUTPUT:
       str

void
ajFloatTrace (array, precision, text)
       const AjPFloat array
       ajint precision
       const char* text

ajint
ajArrCommaList (s, a)
       const AjPStr s
       AjPStr *& a
    OUTPUT:
       RETVAL
       a

ajint*
ajArrIntLine (line, delim, cols, startcol, endcol)
       const AjPStr line
       const char* delim
       ajint cols
       ajint startcol
       ajint endcol
    OUTPUT:
       RETVAL

AjPInt2d
ajInt2dNew ()
    OUTPUT:
       RETVAL

AjPInt2d
ajInt2dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

AjPInt2d
ajInt2dNewLL (size, size2)
       ajint size
       ajint size2
    OUTPUT:
       RETVAL

void
ajInt2dDel (thys)
       AjPInt2d& thys
    OUTPUT:
       thys

ajint
ajInt2dGet (thys, elem1, elem2)
       const AjPInt2d thys
       ajint elem1
       ajint elem2
    OUTPUT:
       RETVAL

AjBool
ajInt2dPut (thys, elem1, elem2, v)
       AjPInt2d& thys
       ajint elem1
       ajint elem2
       ajint v
    OUTPUT:
       RETVAL
       thys

void
ajInt2dLen (thys, len1, len2)
       const AjPInt2d thys
       ajint& len1
       ajint& len2
    OUTPUT:
       len1
       len2

ajint**
ajInt2dInt (thys)
       const AjPInt2d thys
    OUTPUT:
       RETVAL

AjPInt3d
ajInt3dNew ()
    OUTPUT:
       RETVAL

AjPInt3d
ajInt3dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajInt3dDel (thys)
       AjPInt3d& thys
    OUTPUT:
       thys

ajint
ajInt3dGet (thys, elem1, elem2, elem3)
       const AjPInt3d thys
       ajint elem1
       ajint elem2
       ajint elem3
    OUTPUT:
       RETVAL

AjBool
ajInt3dPut (thys, elem1, elem2, elem3, v)
       AjPInt3d& thys
       ajint elem1
       ajint elem2
       ajint elem3
       ajint v
    OUTPUT:
       RETVAL
       thys

void
ajInt3dLen (thys, len1, len2, len3)
       const AjPInt3d thys
       ajint& len1
       ajint& len2
       ajint& len3
    OUTPUT:
       len1
       len2
       len3

ajint***
ajInt3dInt (thys)
       const AjPInt3d thys
    OUTPUT:
       RETVAL

AjPFloat2d
ajFloat2dNew ()
    OUTPUT:
       RETVAL

AjPFloat2d
ajFloat2dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajFloat2dDel (thys)
       AjPFloat2d& thys
    OUTPUT:
       thys

float
ajFloat2dGet (thys, elem1, elem2)
       const AjPFloat2d thys
       ajint elem1
       ajint elem2
    OUTPUT:
       RETVAL

AjBool
ajFloat2dPut (thys, elem1, elem2, v)
       AjPFloat2d& thys
       ajint elem1
       ajint elem2
       float v
    OUTPUT:
       RETVAL
       thys

void
ajFloat2dLen (thys, len1, len2)
       const AjPFloat2d thys
       ajint& len1
       ajint& len2
    OUTPUT:
       len1
       len2

float**
ajFloat2dFloat (thys)
       const AjPFloat2d thys
    OUTPUT:
       RETVAL

AjPFloat3d
ajFloat3dNew ()
    OUTPUT:
       RETVAL

AjPFloat3d
ajFloat3dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajFloat3dDel (thys)
       AjPFloat3d& thys
    OUTPUT:
       thys

float
ajFloat3dGet (thys, elem1, elem2, elem3)
       const AjPFloat3d thys
       ajint elem1
       ajint elem2
       ajint elem3
    OUTPUT:
       RETVAL

AjBool
ajFloat3dPut (thys, elem1, elem2, elem3, v)
       AjPFloat3d& thys
       ajint elem1
       ajint elem2
       ajint elem3
       float v
    OUTPUT:
       RETVAL
       thys

void
ajFloat3dLen (thys, len1, len2, len3)
       const AjPFloat3d thys
       ajint& len1
       ajint& len2
       ajint& len3
    OUTPUT:
       len1
       len2
       len3

float***
ajFloat3dFloat (thys)
       const AjPFloat3d thys
    OUTPUT:
       RETVAL

AjPDouble2d
ajDouble2dNew ()
    OUTPUT:
       RETVAL

AjPDouble2d
ajDouble2dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajDouble2dDel (thys)
       AjPDouble2d& thys
    OUTPUT:
       thys

double
ajDouble2dGet (thys, elem1, elem2)
       const AjPDouble2d thys
       ajint elem1
       ajint elem2
    OUTPUT:
       RETVAL

AjBool
ajDouble2dPut (thys, elem1, elem2, v)
       AjPDouble2d& thys
       ajint elem1
       ajint elem2
       double v
    OUTPUT:
       RETVAL
       thys

void
ajDouble2dLen (thys, len1, len2)
       const AjPDouble2d thys
       ajint& len1
       ajint& len2
    OUTPUT:
       len1
       len2

double**
ajDouble2dDouble (thys)
       const AjPDouble2d thys
    OUTPUT:
       RETVAL

AjPDouble3d
ajDouble3dNew ()
    OUTPUT:
       RETVAL

AjPDouble3d
ajDouble3dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajDouble3dDel (thys)
       AjPDouble3d& thys
    OUTPUT:
       thys

double
ajDouble3dGet (thys, elem1, elem2, elem3)
       const AjPDouble3d thys
       ajint elem1
       ajint elem2
       ajint elem3
    OUTPUT:
       RETVAL

AjBool
ajDouble3dPut (thys, elem1, elem2, elem3, v)
       AjPDouble3d& thys
       ajint elem1
       ajint elem2
       ajint elem3
       double v
    OUTPUT:
       RETVAL
       thys

void
ajDouble3dLen (thys, len1, len2, len3)
       const AjPDouble3d thys
       ajint& len1
       ajint& len2
       ajint& len3
    OUTPUT:
       len1
       len2
       len3

double***
ajDouble3dDouble (thys)
       const AjPDouble3d thys
    OUTPUT:
       RETVAL

AjPShort2d
ajShort2dNew ()
    OUTPUT:
       RETVAL

AjPShort2d
ajShort2dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajShort2dDel (thys)
       AjPShort2d& thys
    OUTPUT:
       thys

short
ajShort2dGet (thys, elem1, elem2)
       const AjPShort2d thys
       ajint elem1
       ajint elem2
    OUTPUT:
       RETVAL

AjBool
ajShort2dPut (thys, elem1, elem2, v)
       AjPShort2d& thys
       ajint elem1
       ajint elem2
       short v
    OUTPUT:
       RETVAL
       thys

void
ajShort2dLen (thys, len1, len2)
       const AjPShort2d thys
       ajint& len1
       ajint& len2
    OUTPUT:
       len1
       len2

short**
ajShort2dShort (thys)
       const AjPShort2d thys
    OUTPUT:
       RETVAL

AjPShort3d
ajShort3dNew ()
    OUTPUT:
       RETVAL

AjPShort3d
ajShort3dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajShort3dDel (thys)
       AjPShort3d& thys
    OUTPUT:
       thys

short
ajShort3dGet (thys, elem1, elem2, elem3)
       const AjPShort3d thys
       ajint elem1
       ajint elem2
       ajint elem3
    OUTPUT:
       RETVAL

AjBool
ajShort3dPut (thys, elem1, elem2, elem3, v)
       AjPShort3d& thys
       ajint elem1
       ajint elem2
       ajint elem3
       short v
    OUTPUT:
       RETVAL
       thys

void
ajShort3dLen (thys, len1, len2, len3)
       const AjPShort3d thys
       ajint& len1
       ajint& len2
       ajint& len3
    OUTPUT:
       len1
       len2
       len3

short***
ajShort3dShort (thys)
       const AjPShort3d thys
    OUTPUT:
       RETVAL

AjPLong2d
ajLong2dNew ()
    OUTPUT:
       RETVAL

AjPLong2d
ajLong2dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajLong2dDel (thys)
       AjPLong2d& thys
    OUTPUT:
       thys

ajlong
ajLong2dGet (thys, elem1, elem2)
       const AjPLong2d thys
       ajint elem1
       ajint elem2
    OUTPUT:
       RETVAL

AjBool
ajLong2dPut (thys, elem1, elem2, v)
       AjPLong2d& thys
       ajint elem1
       ajint elem2
       ajlong v
    OUTPUT:
       RETVAL
       thys

void
ajLong2dLen (thys, len1, len2)
       const AjPLong2d thys
       ajint& len1
       ajint& len2
    OUTPUT:
       len1
       len2

ajlong**
ajLong2dLong (thys)
       const AjPLong2d thys
    OUTPUT:
       RETVAL

AjPLong3d
ajLong3dNew ()
    OUTPUT:
       RETVAL

AjPLong3d
ajLong3dNewL (size)
       ajint size
    OUTPUT:
       RETVAL

void
ajLong3dDel (thys)
       AjPLong3d& thys
    OUTPUT:
       thys

ajlong
ajLong3dGet (thys, elem1, elem2, elem3)
       const AjPLong3d thys
       ajint elem1
       ajint elem2
       ajint elem3
    OUTPUT:
       RETVAL

AjBool
ajLong3dPut (thys, elem1, elem2, elem3, v)
       AjPLong3d& thys
       ajint elem1
       ajint elem2
       ajint elem3
       ajlong v
    OUTPUT:
       RETVAL
       thys

void
ajLong3dLen (thys, len1, len2, len3)
       const AjPLong3d thys
       ajint& len1
       ajint& len2
       ajint& len3
    OUTPUT:
       len1
       len2
       len3

ajlong***
ajLong3dLong (thys)
       const AjPLong3d thys
    OUTPUT:
       RETVAL

void
ajArrExit ()


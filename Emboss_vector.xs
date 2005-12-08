#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_vector		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajvector.h: automatically generated

float
aj3dVectorAngle (ajp3dVectorFirst, ajp3dVectorSecond)
       const AjP3dVector  ajp3dVectorFirst
       const AjP3dVector  ajp3dVectorSecond
    OUTPUT:
       RETVAL


void
aj3dVectorBetweenPoints (ajp3dVectorBetweenPoints, startX, startY, startZ, endX, endY, endZ)
       AjP3dVector  ajp3dVectorBetweenPoints
       float startX
       float startY
       float startZ
       float endX
       float endY
       float endZ

AjP3dVector
aj3dVectorCreate (fX, fY, fZ)
       float fX
       float fY
       float fZ
    OUTPUT:
       RETVAL

void
aj3dVectorCrossProduct (ajp3dVectorFirst, ajp3dVectorSecond, ajp3dVectorCrossProduct)
       const AjP3dVector  ajp3dVectorFirst
       const AjP3dVector  ajp3dVectorSecond
       AjP3dVector  ajp3dVectorCrossProduct
    OUTPUT:


float
aj3dVectorDihedralAngle (ajp3dVectorA, ajp3dVectorB, ajp3dVectorC)
       const AjP3dVector  ajp3dVectorA
       const AjP3dVector  ajp3dVectorB
       const AjP3dVector  ajp3dVectorC
    OUTPUT:
       RETVAL

void
aj3dVectorDel (ajp3dVectorToBeDestroyed)
       AjP3dVector & ajp3dVectorToBeDestroyed
    OUTPUT:
       ajp3dVectorToBeDestroyed

float
aj3dVectorDotProduct (ajp3dVectorFirst, ajp3dVectorSecond)
       const AjP3dVector  ajp3dVectorFirst
       const AjP3dVector  ajp3dVectorSecond
    OUTPUT:
       RETVAL


float
aj3dVectorLength (ajp3dVectorToBeSized)
       const AjP3dVector  ajp3dVectorToBeSized
    OUTPUT:
       RETVAL

AjP3dVector
aj3dVectorNew ()
    OUTPUT:
       RETVAL

void
aj3dVectorSum (ajp3dVectorFirst, ajp3dVectorSecond, ajp3dVectorSum)
       const AjP3dVector  ajp3dVectorFirst
       const AjP3dVector  ajp3dVectorSecond
       AjP3dVector  ajp3dVectorSum
    OUTPUT:


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

#include "ajhist.h"

MODULE = Bio::Emboss_hist		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajhist.h: automatically generated

void
ajHistClose ()

void
ajHistCopyData (hist, index, data)
       AjPHist  hist
       ajint index
       const PLFLT *data
    OUTPUT:


void
ajHistDelete (hist)
       AjPHist & hist
    OUTPUT:
       hist

void
ajHistDisplay (hist)
       const AjPHist  hist

AjPHist
ajHistNew (numofsets, numofpoints)
       ajint numofsets
       ajint numofpoints
    OUTPUT:
       RETVAL

AjPHist
ajHistNewG (numofsets, numofpoints, graph)
       ajint numofsets
       ajint numofpoints
       AjPGraph graph
    OUTPUT:
       RETVAL

void
ajHistSetBlackandWhite (hist, set)
       AjPHist  hist
       AjBool set

void
ajHistSetColour (hist, index, colour)
       AjPHist  hist
       ajint index
       ajint colour

void
ajHistSetMultiTitle (hist, index, title)
       AjPHist  hist
       ajint index
       const AjPStr title

void
ajHistSetMultiTitleC (hist, index, title)
       AjPHist  hist
       ajint index
       const char *title

void
ajHistSetMultiXTitle (hist, index, title)
       AjPHist  hist
       ajint index
       const AjPStr title

void
ajHistSetMultiXTitleC (hist, index, title)
       AjPHist  hist
       ajint index
       const char *title

void
ajHistSetMultiYTitle (hist, index, title)
       AjPHist  hist
       ajint index
       const AjPStr title

void
ajHistSetMultiYTitleC (hist, index, title)
       AjPHist  hist
       ajint index
       const char *title

void
ajHistSetPattern (hist, index, style)
       AjPHist  hist
       ajint index
       ajint style

void
ajHistSetPtrToData (hist, index, data)
       AjPHist  hist
       ajint index
       PLFLT &data
    OUTPUT:
       data

void
ajHistSetTitleC (hist, strng)
       AjPHist  hist
       const char* strng

void
ajHistSetXAxisC (hist, strng)
       AjPHist  hist
       const char* strng

void
ajHistSetYAxisLeftC (hist, strng)
       AjPHist  hist
       const  char* strng

void
ajHistSetYAxisRightC (hist, strng)
       AjPHist  hist
       const char* strng


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"
#include "ajhist.h"

MODULE = Bio::Emboss_hist		PACKAGE = Bio::Emboss		

void
ajHistClose ()

void
ajHistCopyData (hist, index, data)
       AjPHist hist
       ajint index
       PLFLT *data

void
ajHistDelete (hist)
       AjPHist hist

void
ajHistDisplay (hist)
       AjPHist hist

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
       AjPHist hist
       AjBool set

void
ajHistSetColour (hist, index, colour)
       AjPHist hist
       ajint index
       ajint colour

void
ajHistSetMultiTitle (hist, index, title)
       AjPHist hist
       ajint index
       AjPStr title

void
ajHistSetMultiTitleC (hist, index, title)
       AjPHist hist
       ajint index
       char *title

void
ajHistSetMultiXTitle (hist, index, title)
       AjPHist hist
       ajint index
       AjPStr title

void
ajHistSetMultiXTitleC (hist, index, title)
       AjPHist hist
       ajint index
       char *title

void
ajHistSetMultiYTitle (hist, index, title)
       AjPHist hist
       ajint index
       AjPStr title

void
ajHistSetMultiYTitleC (hist, index, title)
       AjPHist hist
       ajint index
       char *title

void
ajHistSetPattern (hist, index, style)
       AjPHist hist
       ajint index
       ajint style

void
ajHistSetPtrToData (hist, index, data)
       AjPHist hist
       ajint index
       PLFLT *data

void
ajHistSetTitleC (hist, string)
       AjPHist hist
       char* string

void
ajHistSetXAxisC (hist, string)
       AjPHist hist
       char* string

void
ajHistSetYAxisLeftC (hist, string)
       AjPHist hist
       char* string

void
ajHistSetYAxisRightC (hist, string)
       AjPHist hist
       char* string


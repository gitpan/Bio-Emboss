#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_graph		PACKAGE = Bio::Emboss		

 # code from ajgraph.h: automatically generated

void
ajGraphBox (x0, y0, size)
       PLFLT x0
       PLFLT y0
       PLFLT size

void
ajGraphBoxFill (x0, y0, size)
       PLFLT x0
       PLFLT y0
       PLFLT size

ajint
ajGraphCheckColour (colour)
       AjPStr colour
    OUTPUT:
       RETVAL

void
ajGraphCircle (xcentre, ycentre, radius)
       PLFLT xcentre
       PLFLT ycentre
       float radius

void
ajGraphClose ()

void
ajGraphCloseWin ()

void
ajGraphColourBack ()

void
ajGraphColourFore ()

void
ajGraphDataDel (thys)
       AjPGraphData &thys
    OUTPUT:
       thys

void
ajGraphDataObjAddLine (graphs, x1, y1, x2, y2, colour)
       AjPGraphData graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour

void
ajGraphDataObjAddRect (graphs, x1, y1, x2, y2, colour, fill)
       AjPGraphData graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour
       ajint fill

void
ajGraphDataObjAddText (graphs, x1, y1, colour, text)
       AjPGraphData graphs
       float x1
       float y1
       ajint colour
       char *text

void
ajGraphDataxySetMaxMin (graphdata, xmin, xmax, ymin, ymax)
       AjPGraphData graphdata
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphDataxyMaxMin (array, npoints, min, max)
       float *array
       ajint npoints
       float &min
       float &max
    OUTPUT:
       min
       max

void
ajGraphDataxySetMaxima (graphdata, xmin, xmax, ymin, ymax)
       AjPGraphData graphdata
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphDataxySetTypeC (graphdata, type)
       AjPGraphData graphdata
       char* type

void
ajGraphDia (x0, y0, size)
       PLFLT x0
       PLFLT y0
       PLFLT size

void
ajGraphDiaFill (x0, y0, size)
       PLFLT x0
       PLFLT y0
       PLFLT size

void
ajGraphDots (x1, y1, numofdots)
       PLFLT *x1
       PLFLT *y1
       ajint numofdots

void
ajGraphDumpDevices ()

void
ajGraphGetCharSize (defheight, currentheight)
       float &defheight
       float &currentheight
    OUTPUT:
       defheight
       currentheight

ajint
ajGraphGetColour ()
    OUTPUT:
       RETVAL

void
ajGraphGetOut (xp, yp, xleng, yleng, xoff, yoff)
       float &xp
       float &yp
       ajint &xleng
       ajint &yleng
       ajint &xoff
       ajint &yoff
    OUTPUT:
       xp
       yp
       xleng
       yleng
       xoff
       yoff

void
ajGraphGetOutputDeviceParams (xp, yp, xleng, yleng, xoff, yoff)
       float &xp
       float &yp
       ajint &xleng
       ajint &yleng
       ajint &xoff
       ajint &yoff
    OUTPUT:
       xp
       yp
       xleng
       yleng
       xoff
       yoff

void
ajGraphHoriBars (numofpoints, y, xmin, xmax)
       ajint numofpoints
       PLFLT *y
       PLFLT *xmin
       PLFLT *xmax

ajint
ajGraphInfo (files)
       AjPList& files
    OUTPUT:
       RETVAL
       files

void
ajGraphInitSeq (thys, seq)
       AjPGraph thys
       AjPSeq seq

void
ajGraphLabel (x, y, title, subtitle)
       char *x
       char *y
       char *title
       char *subtitle

void
ajGraphLabelYRight (text)
       char *text

void
ajGraphLine (x1, y1, x2, y2)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2

void
ajGraphLines (x1, y1, x2, y2, numoflines)
       PLFLT *x1
       PLFLT *y1
       PLFLT *x2
       PLFLT *y2
       ajint numoflines

AjPGraph
ajGraphNew ()
    OUTPUT:
       RETVAL

void
ajGraphNewPage (resetdefaults)
       AjBool resetdefaults

void
ajGraphObjAddLine (graphs, x1, y1, x2, y2, colour)
       AjPGraph graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour

void
ajGraphObjAddRect (graphs, x1, y1, x2, y2, colour, fill)
       AjPGraph graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour
       ajint fill

void
ajGraphObjAddText (graphs, x1, y1, colour, text)
       AjPGraph graphs
       float x1
       float y1
       ajint colour
       char *text

void
ajGraphObjDel (thys)
       AjPGraph &thys
    OUTPUT:
       thys

void
ajGraphDataObjDel (thys)
       AjPGraphData &thys
    OUTPUT:
       thys

void
ajGraphOpen (thys, xmin, xmax, ymin, ymax, flags)
       AjPGraph thys
       PLFLT xmin
       PLFLT xmax
       PLFLT ymin
       PLFLT ymax
       ajint flags

void
ajGraphOpenPlot (thys, numofsets)
       AjPGraph thys
       ajint numofsets

void
ajGraphOpenWin (thys, xmin, xmax, ymin, ymax)
       AjPGraph thys
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphPlenv (xmin, xmax, ymin, ymax, flags)
       float xmin
       float xmax
       float ymin
       float ymax
       ajint flags

void
ajGraphPoly (n, x, y)
       ajint n
       PLFLT *x
       PLFLT *y

void
ajGraphPolyFill (n, x, y)
       ajint n
       PLFLT *x
       PLFLT *y

void
ajGraphPrintType (outf, full)
       AjPFile outf
       AjBool full

void
ajGraphRect (x0, y0, x1, y1)
       PLFLT x0
       PLFLT y0
       PLFLT x1
       PLFLT y1

void
ajGraphRectFill (x0, y0, x1, y1)
       PLFLT x0
       PLFLT y0
       PLFLT x1
       PLFLT y1

AjBool
ajGraphSet (thys, type)
       AjPGraph thys
       AjPStr type
    OUTPUT:
       RETVAL

void
ajGraphSetDevice (thys)
       AjPGraph thys

float
ajGraphSetCharSize (size)
       float size
    OUTPUT:
       RETVAL

void
ajGraphSetBackBlack ()

void
ajGraphSetBackWhite ()

void
ajGraphSetPenWidth (width)
       float width

ajint
ajGraphSetFillPat (style)
       ajint style
    OUTPUT:
       RETVAL

ajint
ajGraphSetFore (colour)
       ajint colour
    OUTPUT:
       RETVAL

ajint
ajGraphSetLineStyle (style)
       ajint style
    OUTPUT:
       RETVAL

void
ajGraphSetMulti (thys, numsets)
       AjPGraph thys
       ajint numsets

void
ajGraphSetName (thys)
       AjPGraph thys

void
ajGraphSetOri (ori)
       ajint ori

void
ajGraphSymbols (numofdots, x1, y1, symbol)
        ajint numofdots
       PLFLT *x1
       PLFLT *y1
       ajint symbol

void
ajGraphText (x1, y1, text, just)
       PLFLT x1
       PLFLT y1
       char *text
       PLFLT just

void
ajGraphTextEnd (x1, y1, text)
       PLFLT x1
       PLFLT y1
       char *text

void
ajGraphTextMid (x1, y1, text)
       PLFLT x1
       PLFLT y1
       char *text

void
ajGraphTextLine (x1, y1, x2, y2, text, just)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       char *text
       PLFLT just

void
ajGraphTextStart (x1, y1, text)
       PLFLT x1
       PLFLT y1
       char *text

void
ajGraphTrace (thys)
       AjPGraph thys

void
ajGraphTraceInt (thys, outf)
       AjPGraph thys
       FILE* outf
    OUTPUT:
       outf

void
ajGraphTri (x1, y1, x2, y2, x3, y3)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       PLFLT x3
       PLFLT y3

void
ajGraphTriFill (x1, y1, x2, y2, x3, y3)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       PLFLT x3
       PLFLT y3

void
ajGraphUnused ()

void
ajGraphVertBars (numofpoints, x, ymin, ymax)
       ajint numofpoints
       PLFLT *x
       PLFLT *ymin
       PLFLT *ymax

void
ajGraphxyAddDataCalcPtr (graph, numofpoints, start, incr, y)
       AjPGraphData graph
       ajint numofpoints
       float start
       float incr
       float* y

void
ajGraphxyAddDataPtrPtr (graph, x, y)
       AjPGraphData graph
       float *x
       float *y

ajint
ajGraphxyAddGraph (mult, graphdata)
       AjPGraph mult
       AjPGraphData graphdata
    OUTPUT:
       RETVAL

ajint
ajGraphxyReplaceGraph (mult, graphdata)
       AjPGraph mult
       AjPGraphData graphdata
    OUTPUT:
       RETVAL

AjPGraphData
ajGraphxyDataNew ()
    OUTPUT:
       RETVAL

AjPGraphData
ajGraphxyDataNewI (numsets)
       ajint numsets
    OUTPUT:
       RETVAL

void
ajGraphxyDataSetSubtitle (graph, title)
       AjPGraphData graph
       AjPStr title

void
ajGraphxyDataSetSubtitleC (graph, title)
       AjPGraphData graph
       char *title

void
ajGraphxyDataSetTitle (graph, title)
       AjPGraphData graph
       AjPStr title

void
ajGraphxyDataSetTitleC (graph, title)
       AjPGraphData graph
       char *title

void
ajGraphxyDataSetXtitle (graphdata, title)
       AjPGraphData graphdata
       AjPStr title

void
ajGraphxyDataSetXtitleC (graphdata, title)
       AjPGraphData graphdata
       char *title

void
ajGraphxyDataSetYtitle (graphdata, title)
       AjPGraphData graphdata
       AjPStr title

void
ajGraphxyDataSetYtitleC (graphdata, title)
       AjPGraphData graphdata
       char *title

void
ajGraphxyDel (mult)
       AjPGraph mult

void
ajGraphxyDisplay (graphs, closeit)
       AjPGraph graphs
       AjBool closeit 

AjPGraph
ajGraphxyInitGraphCalcPtr (numofpoints, start, incr, y)
       ajint numofpoints
       float start
       float incr
       float *y
    OUTPUT:
       RETVAL

AjPGraph
ajGraphxyNewI (numofpoints)
       ajint numofpoints
    OUTPUT:
       RETVAL

void
ajGraphxyPrint (graphs)
       AjPGraph graphs

void
ajGraphxyCheckMaxMin (graphs)
       AjPGraph graphs

AjBool
ajGraphxySet (thys, type)
       AjPGraph thys
       AjPStr type
    OUTPUT:
       RETVAL

void
ajGraphxySetCirclePoints (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetColour (graph, colour)
       AjPGraphData graph
       ajint colour

void
ajGraphxySetFlag (graphs, flag, istrue)
       AjPGraph graphs
       ajint flag
       AjBool istrue

void
ajGraphxySetGaps (graphs, overlap)
       AjPGraph graphs
       AjBool overlap

void
ajGraphxySetJoinPoints (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetLineType (graph, type)
       AjPGraphData graph
       ajint type

void
ajGraphxySetMaxMin (graphs, xmin, xmax, ymin, ymax)
       AjPGraph graphs
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphxySetOut (mult, txt)
       AjPGraph mult
       AjPStr txt

void
ajGraphxySetOutC (mult, txt)
       AjPGraph mult
       char* txt

void
ajGraphxySetOverLap (graphs, overlap)
       AjPGraph graphs
       AjBool overlap

void
ajGraphxySetSubtitleDo (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetTitleDo (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXBottom (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXLabelTop (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXTick (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXTop (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXEnd (graphs, val)
       AjPGraph graphs
       float val

void
ajGraphxySetXGrid (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXInvTicks (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXLabel (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetXRangeII (thys, start, end)
       AjPGraph thys
       ajint start
       ajint end

void
ajGraphxySetXStart (graphs, val)
       AjPGraph graphs
       float val

void
ajGraphxySetYLabelLeft (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYLeft (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYRight (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYTick (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYEnd (graphs, val)
       AjPGraph graphs
       float val

void
ajGraphxySetYGrid (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYInvTicks (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYLabel (graphs, set)
       AjPGraph graphs
       AjBool set

void
ajGraphxySetYRangeII (thys, start, end)
       AjPGraph thys
       ajint start
       ajint end

void
ajGraphxySetYStart (graphs, val)
       AjPGraph graphs
       float val

void
ajGraphxySubtitle (graphs, title)
       AjPGraph graphs
       AjPStr title

void
ajGraphxySubtitleC (graphs, title)
       AjPGraph graphs
       char *title

void
ajGraphxyTitle (graphs, title)
       AjPGraph graphs
       AjPStr title

void
ajGraphxyTitleC (graphs, title)
       AjPGraph graphs
       char *title

void
ajGraphxyTrace (thys)
       AjPGraph thys

void
ajGraphxyXtitle (graphs, title)
       AjPGraph graphs
       AjPStr title

void
ajGraphxyXtitleC (graphs, title)
       AjPGraph graphs
       char *title

void
ajGraphxyYtitle (graphs, title)
       AjPGraph graphs
       AjPStr title

void
ajGraphxyYtitleC (graphs, title)
       AjPGraph graphs
       char *title

void
ajGraphPartCircle (xcentre, ycentre, radius, StartAngle, EndAngle)
       PLFLT xcentre
       PLFLT ycentre
       float radius
       PLFLT StartAngle
       PLFLT EndAngle

void
ajGraphDrawTextOnCurve (xcentre, ycentre, Radius, StartAngle, EndAngle, Text, just)
       PLFLT xcentre
       PLFLT ycentre
       PLFLT Radius
       PLFLT StartAngle
       PLFLT EndAngle
       char *Text
       PLFLT just

void
ajGraphRectangleOnCurve (xcentre, ycentre, Radius, BoxHeight, StartAngle, EndAngle)
       PLFLT xcentre
       PLFLT ycentre
       PLFLT Radius
       PLFLT BoxHeight
       PLFLT StartAngle
       PLFLT EndAngle

PLFLT
ajGraphTextLength (x1, y1, x2, y2, text)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       char *text
    OUTPUT:
       RETVAL

PLFLT
ajGraphTextHeight (x1, x2, y1, y2)
       PLFLT x1
       PLFLT x2
       PLFLT y1
       PLFLT y2
    OUTPUT:
       RETVAL

PLFLT
ajGraphDistPts (x1, y1, x2, y2)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
    OUTPUT:
       RETVAL

PLFLT
ajGraphFitTextOnLine (x1, y1, x2, y2, text, TextHeight)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       char *text
       PLFLT TextHeight
    OUTPUT:
       RETVAL

float
ajGraphSetDefCharSize (size)
       float size
    OUTPUT:
       RETVAL

void
ajGraphFillRectangleOnCurve (xcentre, ycentre, Radius, BoxHeight, StartAngle, EndAngle)
       PLFLT xcentre
       PLFLT ycentre
       PLFLT Radius
       PLFLT BoxHeight
       PLFLT StartAngle
       PLFLT EndAngle


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_graph		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

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
       const AjPStr colour
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
ajGraphPlpDataAddLine (graphs, x1, y1, x2, y2, colour)
       AjPGraphPlpData graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour

void
ajGraphPlpDataAddRect (graphs, x1, y1, x2, y2, colour, fill)
       AjPGraphPlpData graphs
       float x1
       float y1
       float x2
       float y2
       ajint colour
       ajint fill

void
ajGraphPlpDataAddText (graphs, x1, y1, colour, text)
       AjPGraphPlpData graphs
       float x1
       float y1
       ajint colour
       const char *text

void
ajGraphPlpDataSetMaxMin (graphdata, xmin, xmax, ymin, ymax)
       AjPGraphPlpData graphdata
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphArrayMaxMin (array, npoints, min, max)
       const float &array
       ajint npoints
       float &min
       float &max
    OUTPUT:
       array
       min
       max

void
ajGraphPlpDataSetMaxima (graphdata, xmin, xmax, ymin, ymax)
       AjPGraphPlpData graphdata
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphPlpDataSetTypeC (graphdata, type)
       AjPGraphPlpData graphdata
       const char *type

void
ajGraphPlpDataTrace (thys)
       const AjPGraphPlpData thys

void
ajGraphClear (thys)
       AjPGraph thys

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
       PLFLT &x1
       PLFLT &y1
       ajint numofdots
    OUTPUT:
       x1
       y1

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

const AjPStr
ajGraphGetSubTitle (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const char*
ajGraphGetSubTitleC (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const AjPStr
ajGraphGetTitle (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const char*
ajGraphGetTitleC (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const AjPStr
ajGraphGetXTitle (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const char*
ajGraphGetXTitleC (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const AjPStr
ajGraphGetYTitle (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

const char*
ajGraphGetYTitleC (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

void
ajGraphHoriBars (numofpoints, y, xmin, xmax)
       ajint numofpoints
       PLFLT &y
       PLFLT &xmin
       PLFLT &xmax
    OUTPUT:
       y
       xmin
       xmax

ajint
ajGraphInfo (files)
       AjPList& files
    OUTPUT:
       RETVAL
       files


void
ajGraphInitSeq (thys, seq)
       AjPGraph thys
       const AjPSeq seq

AjBool
ajGraphIsData (thys)
       const AjPGraph thys
    OUTPUT:
       RETVAL

void
ajGraphLabel (x, y, title, subtitle)
       const char *x
       const char *y
       const char *title
       const char *subtitle

void
ajGraphLabelYRight (text)
       const char *text

void
ajGraphLine (x1, y1, x2, y2)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2

void
ajGraphLines (x1, y1, x2, y2, numoflines)
       PLFLT &x1
       PLFLT &y1
       PLFLT &x2
       PLFLT &y2
       ajint numoflines
    OUTPUT:
       x1
       y1
       x2
       y2

AjPGraph
ajGraphNew ()
    OUTPUT:
       RETVAL

void
ajGraphNewPage (resetdefaults)
       AjBool resetdefaults

void
ajGraphAddLine (thys, x1, y1, x2, y2, colour)
       AjPGraph thys
       float x1
       float y1
       float x2
       float y2
       ajint colour

void
ajGraphAddRect (thys, x1, y1, x2, y2, colour, fill)
       AjPGraph thys
       float x1
       float y1
       float x2
       float y2
       ajint colour
       ajint fill

void
ajGraphAddText (thys, x1, y1, colour, text)
       AjPGraph thys
       float x1
       float y1
       ajint colour
       const char *text

void
ajGraphPlpDataDel (thys)
       AjPGraphPlpData &thys
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
       PLFLT &x
       PLFLT &y
    OUTPUT:
       x
       y

void
ajGraphPolyFill (n, x, y)
       ajint n
       PLFLT &x
       PLFLT &y
    OUTPUT:
       x
       y

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
       const AjPStr type
    OUTPUT:
       RETVAL

void
ajGraphSetDevice (thys)
       const AjPGraph thys

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
       const AjPGraph thys

void
ajGraphSetOri (ori)
       ajint ori

void
ajGraphSymbols (numofdots, x1, y1, symbol)
        ajint numofdots
       PLFLT &x1
       PLFLT &y1
       ajint symbol
    OUTPUT:
       x1
       y1

void
ajGraphText (x1, y1, text, just)
       PLFLT x1
       PLFLT y1
       const char *text
       PLFLT just

void
ajGraphTextEnd (x1, y1, text)
       PLFLT x1
       PLFLT y1
       const char *text

void
ajGraphTextMid (x1, y1, text)
       PLFLT x1
       PLFLT y1
       const char *text

void
ajGraphTextLine (x1, y1, x2, y2, text, just)
       PLFLT x1
       PLFLT y1
       PLFLT x2
       PLFLT y2
       const char *text
       PLFLT just

void
ajGraphTextStart (x1, y1, text)
       PLFLT x1
       PLFLT y1
       const char *text

void
ajGraphTrace (thys)
       const AjPGraph thys

void
ajGraphTraceInt (thys, outf)
       const AjPGraph thys
       FILE* outf
    OUTPUT:


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
       PLFLT &x
       PLFLT &ymin
       PLFLT &ymax
    OUTPUT:
       x
       ymin
       ymax

void
ajGraphPlpDataCalcXY (graphdata, numofpoints, start, incr, y)
       AjPGraphPlpData graphdata
       ajint numofpoints
       float start
       float incr
       const float& y
    OUTPUT:
       y

void
ajGraphPlpDataSetXY (graphdata, x, y)
       AjPGraphPlpData graphdata
       const float &x
       const float &y
    OUTPUT:
       x
       y

ajint
ajGraphDataAdd (thys, graphdata)
       AjPGraph thys
       AjPGraphPlpData graphdata
    OUTPUT:
       RETVAL

ajint
ajGraphDataReplace (thys, graphdata)
       AjPGraph thys
       AjPGraphPlpData graphdata
    OUTPUT:
       RETVAL

AjPGraphPlpData
ajGraphPlpDataNew ()
    OUTPUT:
       RETVAL

AjPGraphPlpData
ajGraphPlpDataNewI (numsets)
       ajint numsets
    OUTPUT:
       RETVAL

void
ajGraphPlpDataSetSubTitle (graphdata, title)
       AjPGraphPlpData graphdata
       const AjPStr title

void
ajGraphPlpDataSetSubTitleC (graphdata, title)
       AjPGraphPlpData graphdata
       const char *title

void
ajGraphPlpDataSetTitle (graphdata, title)
       AjPGraphPlpData graphdata
       const AjPStr title

void
ajGraphPlpDataSetTitleC (graphdata, title)
       AjPGraphPlpData graphdata
       const char *title

void
ajGraphPlpDataSetXTitle (graphdata, title)
       AjPGraphPlpData graphdata
       const AjPStr title

void
ajGraphPlpDataSetXTitleC (graphdata, title)
       AjPGraphPlpData graphdata
       const char *title

void
ajGraphPlpDataSetYTitle (graphdata, title)
       AjPGraphPlpData graphdata
       const AjPStr title

void
ajGraphPlpDataSetYTitleC (graphdata, title)
       AjPGraphPlpData graphdata
       const char *title

void
ajGraphxyDel (pmult)
       AjPGraph& pmult
    OUTPUT:
       pmult

void
ajGraphxyDisplay (thys, closeit)
       AjPGraph thys
       AjBool closeit 

AjPGraph
ajGraphxyNewI (numofpoints)
       ajint numofpoints
    OUTPUT:
       RETVAL

void
ajGraphxyPrint (thys)
       AjPGraph thys

void
ajGraphxyCheckMaxMin (thys)
       AjPGraph thys

AjBool
ajGraphxySet (thys, type)
       AjPGraph thys
       const AjPStr type
    OUTPUT:
       RETVAL

void
ajGraphxySetCirclePoints (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphPlpDataSetColour (graphdata, colour)
       AjPGraphPlpData graphdata
       ajint colour

void
ajGraphSetFlag (thys, flag, istrue)
       AjPGraph thys
       ajint flag
       AjBool istrue

void
ajGraphxySetGaps (thys, overlap)
       AjPGraph thys
       AjBool overlap

void
ajGraphxySetJoinPoints (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphPlpDataSetLineType (graphdata, type)
       AjPGraphPlpData graphdata
       ajint type

void
ajGraphxySetMaxMin (thys, xmin, xmax, ymin, ymax)
       AjPGraph thys
       float xmin
       float xmax
       float ymin
       float ymax

void
ajGraphSetOut (thys, txt)
       AjPGraph thys
       const AjPStr txt

void
ajGraphSetOutC (thys, txt)
       AjPGraph thys
       const char *txt

void
ajGraphxySetOverLap (thys, overlap)
       AjPGraph thys
       AjBool overlap

void
ajGraphSetSubTitleDo (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphSetTitleDo (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXBottom (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXLabelTop (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXTick (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXTop (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXEnd (thys, val)
       AjPGraph thys
       float val

void
ajGraphxySetXGrid (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXInvTicks (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXLabel (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetXRangeII (thys, start, end)
       AjPGraph thys
       ajint start
       ajint end

void
ajGraphxySetXStart (thys, val)
       AjPGraph thys
       float val

void
ajGraphxySetYLabelLeft (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYLeft (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYRight (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYTick (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYEnd (thys, val)
       AjPGraph thys
       float val

void
ajGraphxySetYGrid (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYInvTicks (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYLabel (thys, set)
       AjPGraph thys
       AjBool set

void
ajGraphxySetYRangeII (thys, start, end)
       AjPGraph thys
       ajint start
       ajint end

void
ajGraphxySetYStart (thys, val)
       AjPGraph thys
       float val

void
ajGraphSetSubTitle (thys, title)
       AjPGraph thys
       const AjPStr title

void
ajGraphSetSubTitleC (thys, title)
       AjPGraph thys
       const char *title

void
ajGraphSetTitle (thys, title)
       AjPGraph thys
       const AjPStr title

void
ajGraphSetTitleC (thys, title)
       AjPGraph thys
       const char *title

void
ajGraphxyTrace (thys)
       AjPGraph thys

void
ajGraphSetXTitle (thys, title)
       AjPGraph thys
       const AjPStr title

void
ajGraphSetXTitleC (thys, title)
       AjPGraph thys
       const char *title

void
ajGraphSetYTitle (thys, title)
       AjPGraph thys
       const AjPStr title

void
ajGraphSetYTitleC (thys, title)
       AjPGraph thys
       const char *title


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
       const char *Text
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
       const char *text
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
       const char *text
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


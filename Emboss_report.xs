#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_report		PACKAGE = Bio::Emboss		

 # code from ajreport.h: automatically generated

void
ajReportClose (pthys)
       AjPReport pthys

void
ajReportDel (pthys)
       AjPReport& pthys
    OUTPUT:
       pthys

AjBool
ajReportOpen (thys, name)
       AjPReport thys
       AjPStr name
    OUTPUT:
       RETVAL

void
ajReportFileAdd (thys, file, type)
       AjPReport thys
       AjPFile file
       AjPStr type

AjBool
ajReportFindFormat (format, iformat)
       AjPStr format
       ajint& iformat
    OUTPUT:
       RETVAL
       iformat

AjBool
ajReportFormatDefault (pformat)
       AjPStr& pformat
    OUTPUT:
       RETVAL
       pformat

AjPReport
ajReportNew ()
    OUTPUT:
       RETVAL

void
ajReportPrintFormat (outf, full)
       AjPFile outf
       AjBool full

AjPStr
ajReportSeqName (thys, seq)
       AjPReport thys
       AjPSeq seq
    OUTPUT:
       RETVAL

void
ajReportSetHeader (thys, header)
       AjPReport thys
       AjPStr header

void
ajReportSetHeaderC (thys, header)
       AjPReport thys
       char* header

AjBool
ajReportSetTags (thys, taglist, mintags)
       AjPReport thys
       AjPStr taglist
       ajint mintags
    OUTPUT:
       RETVAL

void
ajReportSetTail (thys, tail)
       AjPReport thys
       AjPStr tail

void
ajReportSetTailC (thys, tail)
       AjPReport thys
       char* tail

void
ajReportSetType (thys, ftable, seq)
       AjPReport thys
       AjPFeattable ftable
       AjPSeq seq

void
ajReportWriteTail (thys, ftable, seq)
       AjPReport thys
       AjPFeattable ftable
       AjPSeq seq

void
ajReportTrace (thys)
       AjPReport thys

AjBool
ajReportValid (thys)
       AjPReport thys
    OUTPUT:
       RETVAL

void
ajReportWrite (thys, ftable, seq)
       AjPReport thys
       AjPFeattable ftable
       AjPSeq seq

void
ajReportWriteClose (thys)
       AjPReport thys

void
ajReportWriteHeader (thys, ftable, seq)
       AjPReport thys
       AjPFeattable ftable
       AjPSeq seq


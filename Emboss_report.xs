#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_report		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajreport.h: automatically generated

void
ajReportClose (pthys)
       AjPReport  pthys

void
ajReportDel (pthys)
       AjPReport & pthys
    OUTPUT:
       pthys

void
ajReportDummyFunction ()

void
ajReportFileAdd (thys, file, type)
       AjPReport  thys
       AjPFile file
       const AjPStr type

AjBool
ajReportFindFormat (format, iformat)
       const AjPStr format
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

AjBool
ajReportOpen (thys, name)
       AjPReport  thys
       const AjPStr name
    OUTPUT:
       RETVAL

void
ajReportPrintFormat (outf, full)
       AjPFile outf
       AjBool full

const AjPStr
ajReportSeqName (thys, seq)
       const AjPReport  thys
       const AjPSeq seq
    OUTPUT:
       RETVAL

void
ajReportSetHeader (thys, header)
       AjPReport  thys
       const AjPStr header

void
ajReportSetHeaderC (thys, header)
       AjPReport  thys
       const char* header

void
ajReportSetSubHeader (thys, header)
       AjPReport  thys
       const AjPStr header

void
ajReportSetSubHeaderC (thys, header)
       AjPReport  thys
       const char* header

AjBool
ajReportSetTags (thys, taglist)
       AjPReport  thys
       const AjPStr taglist
    OUTPUT:
       RETVAL

void
ajReportSetTail (thys, tail)
       AjPReport  thys
       const AjPStr tail

void
ajReportSetTailC (thys, tail)
       AjPReport  thys
       const char* tail

void
ajReportSetSubTail (thys, tail)
       AjPReport  thys
       const AjPStr tail

void
ajReportSetSubTailC (thys, tail)
       AjPReport  thys
       const char* tail

void
ajReportSetType (thys, ftable, seq)
       AjPReport  thys
       const AjPFeattable ftable
       const AjPSeq seq

void
ajReportTrace (thys)
       const AjPReport  thys

AjBool
ajReportValid (thys)
       AjPReport  thys
    OUTPUT:
       RETVAL

void
ajReportWrite (thys, ftable, seq)
       AjPReport  thys
       const AjPFeattable ftable
       const AjPSeq seq

void
ajReportWriteClose (thys)
       AjPReport  thys

void
ajReportWriteHeader (thys, ftable, seq)
       AjPReport  thys
       const AjPFeattable ftable
       const AjPSeq seq

void
ajReportWriteTail (thys, ftable, seq)
       AjPReport  thys
       const AjPFeattable ftable
       const AjPSeq seq


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_translate		PACKAGE = Bio::Emboss		

 # code from ajtranslate.h: automatically generated

void
ajTrnDel (pthis)
       AjPTrn& pthis
    OUTPUT:
       pthis

AjPTrn
ajTrnNew (trnFileName)
       AjPStr trnFileName
    OUTPUT:
       RETVAL

AjPTrn
ajTrnNewI (trnFileNameInt)
       ajint trnFileNameInt
    OUTPUT:
       RETVAL

AjPTrn
ajTrnNewC (trnFileName)
       char *trnFileName
    OUTPUT:
       RETVAL

void
ajTrnReadFile (trnObj, trnFile)
       AjPTrn trnObj
       AjPFile trnFile

AjPSeq
ajTrnNewPep (nucleicSeq, frame)
       AjPSeq nucleicSeq
       ajint frame
    OUTPUT:
       RETVAL

AjPStr
ajTrnCodon (trnObj, codon)
       AjPTrn trnObj
       AjPStr codon
    OUTPUT:
       RETVAL

AjPStr
ajTrnRevCodon (trnObj, codon)
       AjPTrn trnObj
       AjPStr codon
    OUTPUT:
       RETVAL

AjPStr
ajTrnCodonC (trnObj, codon)
       AjPTrn trnObj
       char *codon
    OUTPUT:
       RETVAL

AjPStr
ajTrnRevCodonC (trnObj, codon)
       AjPTrn trnObj
       char *codon
    OUTPUT:
       RETVAL

char
ajTrnCodonK (trnObj, codon)
       AjPTrn trnObj
       char *codon
    OUTPUT:
       RETVAL

char
ajTrnRevCodonK (trnObj, codon)
       AjPTrn trnObj
       char *codon
    OUTPUT:
       RETVAL

void
ajTrnC (trnObj, str, len, pep)
       AjPTrn trnObj
       char *str
       ajint len
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnRevC (trnObj, str, len, pep)
       AjPTrn trnObj
       char *str
       ajint len
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnAltRevC (trnObj, str, len, pep)
       AjPTrn trnObj
       char *str
       ajint len
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnStr (trnObj, str, pep)
       AjPTrn trnObj
       AjPStr str
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnRevStr (trnObj, str, pep)
       AjPTrn trnObj
       AjPStr str
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnAltRevStr (trnObj, str, pep)
       AjPTrn trnObj
       AjPStr str
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnSeq (trnObj, seq, pep)
       AjPTrn trnObj
       AjPSeq seq
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnRevSeq (trnObj, seq, pep)
       AjPTrn trnObj
       AjPSeq seq
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnAltRevSeq (trnObj, seq, pep)
       AjPTrn trnObj
       AjPSeq seq
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnCFrame (trnObj, seq, len, frame, pep)
       AjPTrn trnObj
       char *seq
       ajint len
       ajint frame
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnStrFrame (trnObj, seq, frame, pep)
       AjPTrn trnObj
       AjPStr seq
       ajint frame
       AjPStr &pep
    OUTPUT:
       pep

void
ajTrnSeqFrame (trnObj, seq, frame, pep)
       AjPTrn trnObj
       AjPSeq seq
       ajint frame
       AjPStr &pep
    OUTPUT:
       pep

AjPSeq
ajTrnSeqFramePep (trnObj, seq, frame)
       AjPTrn trnObj
       AjPSeq seq
       ajint frame
    OUTPUT:
       RETVAL

ajint
ajTrnCDangle (trnObj, seq, len, frame, pep)
       AjPTrn trnObj
       char *seq
       ajint len
       ajint frame
       AjPStr &pep
    OUTPUT:
       RETVAL
       pep

ajint
ajTrnStrDangle (trnObj, seq, frame, pep)
       AjPTrn trnObj
       AjPStr seq
       ajint frame
       AjPStr &pep
    OUTPUT:
       RETVAL
       pep

AjPStr
ajTrnGetTitle (thys)
       AjPTrn thys
    OUTPUT:
       RETVAL

AjPStr
ajTrnGetFileName (thys)
       AjPTrn thys
    OUTPUT:
       RETVAL

ajint
ajTrnStartStop (trnObj, codon, aa)
       AjPTrn trnObj
       AjPStr codon
       char *aa
    OUTPUT:
       RETVAL

ajint
ajTrnStartStopC (trnObj, codon, aa)
       AjPTrn trnObj
       char *codon
       char *aa
    OUTPUT:
       RETVAL

AjPSeq
ajTrnSeqOrig (trnObj, seq, frame)
       AjPTrn trnObj
       AjPSeq seq
       ajint frame
    OUTPUT:
       RETVAL


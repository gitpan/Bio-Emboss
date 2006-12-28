#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_pat		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajpat.c: automatically generated

AjPPatternSeq
ajPatternSeqNewList (plist, name, pat, mismatch)
       AjPPatlistSeq plist
       const AjPStr name
       const AjPStr pat
       ajint mismatch
    OUTPUT:
       RETVAL

AjPPatternRegex
ajPatternRegexNewList (plist, name, pat)
       AjPatlistRegex plist
       const AjPStr name
       const AjPStr pat
    OUTPUT:
       RETVAL

void
ajPatternRegexDel (pthys)
       AjPPattern pthys
    OUTPUT:
       pthys

void
ajPatternSeqDel (pthys)
       AjPPattern pthys
    OUTPUT:
       pthys

const AjPStr
ajPatternSeqGetName (thys)
       AjPPatternSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajPatternRegexGetName (thys)
       AjPPatternRegex thys
    OUTPUT:
       RETVAL

const AjPStr
ajPatternSeqGetPattern (thys)
       AjPPatternSeq thys
    OUTPUT:
       RETVAL

const AjPStr
ajPatternRegexGetPattern (thys)
       AjPPatternRegex thys
    OUTPUT:
       RETVAL

AjPPatComp
ajPatternSeqGetCompiled (thys)
       AjPPatternSeq thys
    OUTPUT:
       RETVAL

void*
ajPatternRegexGetCompiled (thys)
       AjPPatternRegex thys
    OUTPUT:
       RETVAL

AjBool
ajPatternSeqGetprotein (thys)
       AjPPattern thys
    OUTPUT:
       RETVAL

ajint
ajPatternRegexGetType (thys)
       AjPPatternRegex thys
    OUTPUT:
       RETVAL

ajint
ajPatternSeqGetMismatch (thys)
       AjPPatternSeq thys
    OUTPUT:
       RETVAL

void
ajPatternSeqSetCompiled (thys, pat)
       AjPPatternSeq thys
       char* pat

void
ajPatternRegexSetCompiled (thys, pat)
       AjPPatternRegex thys
       AjPRegexp pat

void
ajPatternSeqDebug ()

void
ajPatternRegexDebug ()

AjPPatlistRegex
ajPatlistRegexNew ()
    OUTPUT:
       RETVAL

AjPPatlistRegex
ajPatlistRegexNew (type)
       ajint type
    OUTPUT:
       RETVAL

AjPPatlistSeq
ajPatlistSeqNew ()
    OUTPUT:
       RETVAL

AjPPatlistSeq
ajPatlistSeqNewType (type)
       AjBool type
    OUTPUT:
       RETVAL

void
ajPatlistRegexDel (pthys)
       AjPPatlistRegex& pthys
    OUTPUT:
       pthys

void
ajPatlistSeqDel (pthys)
       AjPPatlistSeq& pthys
    OUTPUT:
       pthys

AjPPatlistSeq
ajPatlistSeqRead (patspec, patname, protein, mismatches)
       AjPStr patspec
       AjPStr patname
       AjBool protein
       ajint mismatches
    OUTPUT:
       RETVAL

AjPPatlistRegex
ajPatlistRegexRead (patspec, patname, type, upper, lower)
       const AjPStr patspec
       const AjPStr patname
       ajint type
       AjBool upper
       AjBool lower
    OUTPUT:
       RETVAL

ajint
ajPatlistSeqGetSize (pthys)
       const AjPPatlistSeq pthys
    OUTPUT:
       RETVAL

ajint
ajPatlistRegexGetSize (pthys)
       const AjPPatlistRegex pthys
    OUTPUT:
       RETVAL

AjBool
ajPatlistSeqGetNext (pthys, pthys)
       AjPPatlistSeq pthys
       AjPPatternSeq& pthys
    OUTPUT:
       RETVAL
       pthys

AjBool
ajPatlistRegexGetNext (pthys, pthys)
       AjPPatlistRegex pthys
       AjPPatternRegex& pthys
    OUTPUT:
       RETVAL
       pthys

void
ajPatlistRegexRewind (pthys)
       AjPPatlistRegex pthys

void
ajPatlistSeqRewind (pthys)
       AjPPatlistSeq pthys

void
ajPatlistRegexRemoveCurrent (pthys)
       AjPPatlistRegex pthys

void
ajPatlistSeqRemoveCurrent (pthys)
       AjPPatlist pthys

void
ajPatlistAddSeq (pthys, pthys)
       AjPPatlistSeq pthys
       AjPPatternSeq pthys

void
ajPatlistAddRegex (pthys, pthys)
       AjPPatlistRegex pthys
       AjPPatternRegex pthys

AjPPatComp
ajPPatCompNew ()
    OUTPUT:
       RETVAL

void
ajPPatCompDel (pthys)
       AjPPatComp& pthys
    OUTPUT:
       pthys

ajint
ajPatternRegexType ()
    OUTPUT:
       RETVAL

ajint
ajPatlistRegexDoc (plist, pdoc)
       AjPPatlistRegex plist
       AjPStr& pdoc
    OUTPUT:
       RETVAL
       pdoc

ajint
ajPatlistSeqDoc (plist, pdoc)
       AjPPatlistSeq plist
       AjPStr& pdoc
    OUTPUT:
       RETVAL
       pdoc


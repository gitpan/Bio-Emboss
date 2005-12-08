#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_phylo		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajphylo.h: automatically generated

void
ajPhyloDistDel (pthis)
       AjPPhyloDist & pthis
    OUTPUT:
       pthis

AjPPhyloDist
ajPhyloDistNew ()
    OUTPUT:
       RETVAL

AjPPhyloDist
ajPhyloDistRead (filename, size, missing)
       const AjPStr filename
       ajint size
       AjBool missing
    OUTPUT:
       RETVAL

void
ajPhyloDistTrace (thys)
       const AjPPhyloDist  thys

void
ajPhyloFreqDel (pthis)
       AjPPhyloFreq & pthis
    OUTPUT:
       pthis

AjPPhyloFreq
ajPhyloFreqNew ()
    OUTPUT:
       RETVAL

AjPPhyloFreq
ajPhyloFreqRead (filename, contchar, genedata, indiv)
       const AjPStr filename
       AjBool contchar
       AjBool genedata
       AjBool indiv
    OUTPUT:
       RETVAL

void
ajPhyloFreqTrace (thys)
       const AjPPhyloFreq  thys

void
ajPhyloPropDel (pthis)
       AjPPhyloProp & pthis
    OUTPUT:
       pthis

ajint
ajPhyloPropGetSize (thys)
       const AjPPhyloProp  thys
    OUTPUT:
       RETVAL

AjPPhyloProp
ajPhyloPropNew ()
    OUTPUT:
       RETVAL

AjPPhyloProp
ajPhyloPropRead (filename, propchars, len, size)
       const AjPStr filename
       const AjPStr propchars
       ajint len
       ajint size
    OUTPUT:
       RETVAL

void
ajPhyloPropTrace (thys)
       const AjPPhyloProp  thys

void
ajPhyloStateDel (pthis)
       AjPPhyloState & pthis
    OUTPUT:
       pthis

AjPPhyloState
ajPhyloStateNew ()
    OUTPUT:
       RETVAL

AjPPhyloState *
ajPhyloStateRead (filename, statechars)
       const AjPStr filename
       const AjPStr statechars
    OUTPUT:
       RETVAL

void
ajPhyloStateTrace (thys)
       const AjPPhyloState  thys

void
ajPhyloTreeDel (pthis)
       AjPPhyloTree & pthis
    OUTPUT:
       pthis

AjPPhyloTree
ajPhyloTreeNew ()
    OUTPUT:
       RETVAL

AjPPhyloTree *
ajPhyloTreeRead (filename, size)
       const AjPStr filename
       ajint size
    OUTPUT:
       RETVAL

void
ajPhyloTreeTrace (thys)
       const AjPPhyloTree  thys


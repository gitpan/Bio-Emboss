#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_nexus		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajnexus.h: automatically generated

void
ajNexusDel (pthys)
       AjPNexus & pthys
    OUTPUT:
       pthys

ajint
ajNexusGetNtaxa (thys)
       const AjPNexus  thys
    OUTPUT:
       RETVAL

AjPStr*
ajNexusGetTaxa (thys)
       const AjPNexus  thys
    OUTPUT:
       RETVAL

AjPStr*
ajNexusGetSequences (thys)
       AjPNexus  thys
    OUTPUT:
       RETVAL

AjPNexus
ajNexusNew ()
    OUTPUT:
       RETVAL

AjPNexus
ajNexusParse (buff)
       AjPFileBuff buff
    OUTPUT:
       RETVAL

void
ajNexusTrace (thys)
       const AjPNexus  thys


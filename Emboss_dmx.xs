#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_dmx		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajdmx.h: automatically generated

void
ajDmxDummyFunction ()

AjPScophit
ajDmxScophitNew ()
    OUTPUT:
       RETVAL

void
ajDmxScophitDel (pthis)
       AjPScophit  &pthis
    OUTPUT:
       pthis


AjPList
ajDmxScophitListCopy (ptr)
       const AjPList ptr
    OUTPUT:
       RETVAL

AjBool
ajDmxScophitCheckTarget (ptr)
       const AjPScophit  ptr
    OUTPUT:
       RETVAL

AjBool
ajDmxScophitTarget (h)
       AjPScophit  &h
    OUTPUT:
       RETVAL
       h

AjBool
ajDmxScophitTarget2 (h)
       AjPScophit  &h
    OUTPUT:
       RETVAL
       h

AjBool
ajDmxScophitTargetLowPriority (h)
       AjPScophit  &h
    OUTPUT:
       RETVAL
       h

ajint
ajDmxScophitCompSpr (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompStart (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompEnd (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompFold (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompSfam (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompFam (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompAcc (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompSunid (entry1, entry2)
       const char *entry1
       const char *entry2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompScore (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

ajint
ajDmxScophitCompPval (hit1, hit2)
       const char *hit1
       const char *hit2
    OUTPUT:
       RETVAL

AjBool
ajDmxScopSeqFromSunid (id, seq, list)
       ajint id
       AjPStr &seq
       const AjPList list
    OUTPUT:
       RETVAL
       seq

AjBool
ajDmxScophitsWrite (outf, list)
       AjPFile outf
       const AjPList list
    OUTPUT:
       RETVAL

AjBool
ajDmxScophitsWriteFasta (outf, list)
       AjPFile outf
       const AjPList list
    OUTPUT:
       RETVAL

AjPScophit
ajDmxScophitReadFasta (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjBool
ajDmxScophitCopy (to, from)
       AjPScophit  &to
       const AjPScophit  from
    OUTPUT:
       RETVAL
       to

AjBool
ajDmxScopalgRead (inf, thys)
       AjPFile inf
       AjPScopalg  &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajDmxScopalgWrite (scop, outf)
       const AjPScopalg  scop
       AjPFile outf
    OUTPUT:
       RETVAL

AjBool
ajDmxScopalgWriteClustal (align, outf)
       const AjPScopalg  align
       AjPFile outf
    OUTPUT:
       RETVAL

AjBool
ajDmxScopalgWriteClustal2 (align, outf)
       const AjPScopalg  align
       AjPFile outf
    OUTPUT:
       RETVAL

AjBool
ajDmxScopalgWriteFasta (align, outf)
       const AjPScopalg  align
       AjPFile outf
    OUTPUT:
       RETVAL

AjPScopalg
ajDmxScopalgNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajDmxScopalgDel (pthis)
       AjPScopalg  &pthis
    OUTPUT:
       pthis



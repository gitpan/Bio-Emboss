#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embprop		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embprop.h: automatically generated

void
embPropAminoRead (fp)
       AjPFile fp

void
embPropCalcFragments (s, n, begin, l, pa, unfavoured, overlap, allpartials, ncomp, npart, rname)
       const char *s
       ajint n
       ajint begin
       AjPList &l
       AjPList &pa
       AjBool unfavoured
       AjBool overlap
       AjBool allpartials
       ajint &ncomp
       ajint &npart
       AjPStr &rname
    OUTPUT:
       l
       pa
       ncomp
       npart
       rname

double
embPropCalcMolextcoeff (s, start, end)
       const char *s
       ajint start
       ajint end
    OUTPUT:
       RETVAL

double
embPropCalcMolwt (s, start, end)
       const char *s
       ajint start
       ajint end
    OUTPUT:
       RETVAL

double
embPropCalcMolwtMod (s, start, end, nmass, cmass)
       const char *s
       ajint start
       ajint end
       double nmass
       double cmass
    OUTPUT:
       RETVAL

const char*
embPropCharToThree (c)
       char c
    OUTPUT:
       RETVAL

const char*
embPropIntToThree (c)
       ajint c
    OUTPUT:
       RETVAL

AjPStr
embPropProtGaps (seq, pad)
       AjPSeq seq
       ajint pad
    OUTPUT:
       RETVAL

AjPStr
embPropProt1to3 (seq, pad)
       AjPSeq seq
       ajint pad
    OUTPUT:
       RETVAL

AjBool
embPropPurine (base)
       char base
    OUTPUT:
       RETVAL

AjBool
embPropPyrimidine (base)
       char base
    OUTPUT:
       RETVAL

AjBool
embPropTransversion (base1, base2)
       char base1
       char base2
    OUTPUT:
       RETVAL

AjBool
embPropTransition (base1, base2)
       char base1
       char base2
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_pdbio		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajpdbio.h: automatically generated

AjPPdb
ajPdbReadRawNew (inf, pdbid, min_chain_size, max_mismatch, max_trim, camask, camask1, atommask, logf)
       AjPFile inf
       const AjPStr pdbid
       ajint min_chain_size
       ajint max_mismatch
       ajint max_trim
       AjBool camask
       AjBool camask1
       AjBool atommask
       AjPFile logf
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteAllRaw (mode, pdb, outf, errf)
       ajint mode
       const AjPPdb pdb
       AjPFile outf
       AjPFile errf
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteDomainRaw (mode, pdb, scop, outf, errf)
       ajint mode
       const AjPPdb pdb
       const AjPScop scop
       AjPFile outf
       AjPFile errf
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteRecordRaw (mode, pdb, mod, chn, outf, errf)
       ajint mode
       const AjPPdb pdb
       ajint mod
       ajint chn
       AjPFile outf
       AjPFile errf
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteDomainRecordRaw (mode, pdb, mod, scop, outf, errf)
       ajint mode
       const AjPPdb pdb
       ajint mod
       const AjPScop scop
       AjPFile outf
       AjPFile errf
    OUTPUT:
       RETVAL


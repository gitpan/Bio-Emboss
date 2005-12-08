#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embpdb		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embpdb.h: automatically generated

AjBool
embAtomInContact (atm1, atm2, thresh, vdw)
       const AjPAtom atm1
       const AjPAtom atm2
       float thresh
       const AjPVdwall vdw
    OUTPUT:
       RETVAL

float
embAtomDistance (atm1, atm2, vdw)
       const AjPAtom atm1
       const AjPAtom atm2
       const AjPVdwall vdw
    OUTPUT:
       RETVAL

AjBool
embPdbAtomIndexI (pdb, chn, idx)
       const AjPPdb pdb
       ajint chn
       AjPInt &idx
    OUTPUT:
       RETVAL
       idx

AjBool
embPdbAtomIndexC (pdb, chn, idx)
       const AjPPdb pdb
       char chn
       AjPInt &idx
    OUTPUT:
       RETVAL
       idx

AjBool
embPdbAtomIndexICA (pdb, chn, idx, nres)
       const AjPPdb pdb
       ajint chn
       AjPInt &idx
       ajint &nres
    OUTPUT:
       RETVAL
       idx
       nres

AjBool
embPdbAtomIndexCCA (pdb, chn, idx, nres)
       const AjPPdb pdb
       char chn
       AjPInt &idx
       ajint &nres
    OUTPUT:
       RETVAL
       idx
       nres

AjBool
embPdbToIdx (idx, pdb, res, chn)
       ajint &idx
       const AjPPdb pdb
       const AjPStr res
       ajint chn
    OUTPUT:
       RETVAL
       idx

AjBool
embPdbListHeterogens (pdb, list_heterogens, siz_heterogens, nhet, logf)
       const AjPPdb pdb
       AjPList &list_heterogens
       AjPInt &siz_heterogens
       ajint &nhet
       AjPFile logf 
    OUTPUT:
       RETVAL
       list_heterogens
       siz_heterogens
       nhet

AjBool
embPdbidToSp (pdb, spr, list)
       const AjPStr pdb
       AjPStr &spr
       const AjPList list
    OUTPUT:
       RETVAL
       spr

AjBool
embPdbidToAcc (pdb, acc, list)
       const AjPStr pdb
       AjPStr &acc
       const AjPList list
    OUTPUT:
       RETVAL
       acc

AjBool
embPdbidToScop (pdb, list_allscop, list_pdbscopids)
       const AjPPdb pdb
       const AjPList list_allscop
       AjPList &list_pdbscopids
    OUTPUT:
       RETVAL
       list_pdbscopids

float
embVdwRad (atm, vdw)
       const AjPAtom atm
       const AjPVdwall vdw
    OUTPUT:
       RETVAL

AjBool
embStrideToThree (to, from)
       AjPStr &to
       const AjPStr from
    OUTPUT:
       RETVAL
       to


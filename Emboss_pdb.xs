#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_pdb		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajpdb.h: automatically generated

AjPHet
ajHetNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajHetDel (ptr)
       AjPHet  &ptr
    OUTPUT:
       ptr

AjPHetent
ajHetentNew ()
    OUTPUT:
       RETVAL

void
ajHetentDel (ptr)
       AjPHetent  &ptr
    OUTPUT:
       ptr

AjPVdwall
ajVdwallNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajVdwallDel (ptr)
       AjPVdwall  &ptr
    OUTPUT:
       ptr

AjPVdwres
ajVdwresNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajVdwresDel (ptr)
       AjPVdwres  &ptr
    OUTPUT:
       ptr

AjPAtom
ajAtomNew ()
    OUTPUT:
       RETVAL

void
ajAtomDel (ptr)
       AjPAtom  &ptr
    OUTPUT:
       ptr

ajint
ajAtomCopy (to, from)
       AjPAtom  &to
       const AjPAtom  from
    OUTPUT:
       RETVAL
       to

ajint
ajAtomListCopy (to, from)
       AjPList &to
       const AjPList from
    OUTPUT:
       RETVAL
       to

AjPResidue
ajResidueNew ()
    OUTPUT:
       RETVAL

void
ajResidueDel (ptr)
       AjPResidue &ptr
    OUTPUT:
       ptr

AjPPdbtosp
ajPdbtospNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajPdbtospDel (ptr)
       AjPPdbtosp  &ptr
    OUTPUT:
       ptr

ajint
ajPdbtospArrFindPdbid (arr, siz, id)
       const AjPPdbtosp  &arr
       ajint siz
       const AjPStr id
    OUTPUT:
       RETVAL
       arr

AjPChain
ajChainNew ()
    OUTPUT:
       RETVAL

void
ajChainDel (ptr)
       AjPChain  &ptr
    OUTPUT:
       ptr

AjPPdb
ajPdbNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajPdbDel (ptr)
       AjPPdb  &ptr
    OUTPUT:
       ptr

AjBool
ajPdbCopy (to, from)
       AjPPdb  &to
       const AjPPdb  from
    OUTPUT:
       RETVAL
       to

AjBool
ajPdbChnidToNum (id, pdb, chn)
       char id
       const AjPPdb  pdb
       ajint &chn
    OUTPUT:
       RETVAL
       chn

AjPPdb
ajPdbReadNew (inf, mode)
       AjPFile inf
       ajint   mode
    OUTPUT:
       RETVAL

AjPPdb
ajPdbReadFirstModelNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteAll (out, obj)
       AjPFile out
       const AjPPdb  obj
    OUTPUT:
       RETVAL

AjBool
ajPdbWriteSegment (outf, pdb, seq, chn, domain, errf)
       AjPFile outf
       const AjPPdb  pdb
       const AjPStr seq
       char chn
       const AjPStr domain
       AjPFile errf
    OUTPUT:
       RETVAL

ajint
ajPdbGetEStrideType (obj, chn, EStrideType)
       const AjPPdb  obj
       ajint chn
       AjPStr &EStrideType
    OUTPUT:
       RETVAL
       EStrideType

AjPHet
ajHetReadRawNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjPHet
ajHetReadNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjBool
ajHetWrite (outf, ptr, dogrep)
       AjPFile outf
       const AjPHet  ptr
       AjBool dogrep
    OUTPUT:
       RETVAL

AjPVdwall
ajVdwallReadNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjPCmap
ajCmapNew (n)
       ajint n
    OUTPUT:
       RETVAL

AjPCmap
ajCmapReadCNew (inf, chn, mod)
       AjPFile inf
       char chn
       ajint mod
    OUTPUT:
       RETVAL

AjPCmap
ajCmapReadINew (inf, chn, mod)
       AjPFile inf
       ajint chn
       ajint mod
    OUTPUT:
       RETVAL

AjPCmap
ajCmapReadNew (inf, mode, chn, mod)
       AjPFile inf
       ajint mode
       ajint chn
       ajint mod
    OUTPUT:
       RETVAL

AjPList
ajCmapReadAllNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

void
ajCmapDel (ptr)
       AjPCmap  &ptr
    OUTPUT:
       ptr

AjBool
ajCmapWrite (outf, cmap)
       AjPFile outf
       const AjPCmap  cmap
    OUTPUT:
       RETVAL

AjPList
ajPdbtospReadAllRawNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjPPdbtosp
ajPdbtospReadNew (inf, entry)
       AjPFile inf
       const AjPStr entry
    OUTPUT:
       RETVAL

AjPPdbtosp
ajPdbtospReadCNew (inf, entry)
       AjPFile inf
       const char *entry
    OUTPUT:
       RETVAL

AjPList
ajPdbtospReadAllNew (inf)
       AjPFile inf
    OUTPUT:
       RETVAL

AjBool
ajPdbtospWrite (outf, list)
       AjPFile outf
       const AjPList list
    OUTPUT:
       RETVAL


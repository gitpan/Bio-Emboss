#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_xyz		PACKAGE = Bio::Emboss		

 # code from ajxyz.h: automatically generated

AjPPdbtosp
ajXyzPdbtospNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzPdbtospDel (thys)
       AjPPdbtosp &thys
    OUTPUT:
       thys

AjBool
ajXyzPdbtospRead (inf, entry, thys)
       AjPFile inf
       AjPStr entry
       AjPPdbtosp &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzPdbtospReadC (inf, entry, thys)
       AjPFile inf
       char *entry
       AjPPdbtosp &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzPdbtospReadAll (inf, list)
       AjPFile inf
       AjPList &list
    OUTPUT:
       RETVAL
       list

ajint
ajXyzPdbtospBinSearch (id, arr, siz)
       AjPStr id
       AjPPdbtosp &arr
       ajint siz
    OUTPUT:
       RETVAL
       arr

ajint
ajXyzSortPdbtospPdb (ptr1, ptr2)
       char *ptr1
       char *ptr2
    OUTPUT:
       RETVAL

AjPAtom
ajXyzAtomNew ()
    OUTPUT:
       RETVAL

void
ajXyzAtomDel (thys)
       AjPAtom &thys
    OUTPUT:
       thys

AjBool
ajXyzInContact (atm1, atm2, thresh, vdw)
       AjPAtom atm1
       AjPAtom atm2
       float thresh
       AjPVdwall vdw
    OUTPUT:
       RETVAL

float
ajXyzAtomDistance (atm1, atm2, vdw)
       AjPAtom atm1
       AjPAtom atm2
       AjPVdwall vdw
    OUTPUT:
       RETVAL

AjPChain
ajXyzChainNew ()
    OUTPUT:
       RETVAL

void
ajXyzChainDel (thys)
       AjPChain &thys
    OUTPUT:
       thys

AjPPdb
ajXyzPdbNew (chains)
       ajint chains
    OUTPUT:
       RETVAL

void
ajXyzPdbDel (thys)
       AjPPdb &thys
    OUTPUT:
       thys

AjBool
ajXyzPdbWriteAll (errf, outf, pdb)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPdbWriteDomain (errf, outf, pdb, scop)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
       AjPScop scop
    OUTPUT:
       RETVAL

AjBool
ajXyzPdbChain (id, pdb, chn)
       char id
       AjPPdb pdb
       ajint &chn
    OUTPUT:
       RETVAL
       chn

AjBool
ajXyzPdbAtomIndexI (pdb, chn, idx)
       AjPPdb pdb
       ajint chn
       AjPInt &idx
    OUTPUT:
       RETVAL
       idx

AjBool
ajXyzPdbAtomIndexC (pdb, chn, idx)
       AjPPdb pdb
       char chn
       AjPInt &idx
    OUTPUT:
       RETVAL
       idx

AjBool
ajXyzPdbAtomIndexICA (pdb, chn, idx, nres)
       AjPPdb pdb
       ajint chn
       AjPInt &idx
       ajint &nres
    OUTPUT:
       RETVAL
       idx
       nres

AjBool
ajXyzPdbAtomIndexCCA (pdb, chn, idx, nres)
       AjPPdb pdb
       char chn
       AjPInt &idx
       ajint &nres
    OUTPUT:
       RETVAL
       idx
       nres

AjBool
ajXyzPdbToSp (pdb, spr, list)
       AjPStr pdb
       AjPStr &spr
       AjPList list
    OUTPUT:
       RETVAL
       spr

AjBool
ajXyzPdbToAcc (pdb, acc, list)
       AjPStr pdb
       AjPStr &acc
       AjPList list
    OUTPUT:
       RETVAL
       acc

AjBool
ajXyzCpdbRead (inf, thys)
       AjPFile inf
       AjPPdb &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzCpdbReadFirstModel (inf, thys)
       AjPFile inf
       AjPPdb &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzCpdbReadOld (inf, thys)
       AjPFile inf
       AjPPdb &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzCpdbWriteAll (out, thys)
       AjPFile out
       AjPPdb thys
    OUTPUT:
       RETVAL

AjBool
ajXyzCpdbWriteDomain (errf, outf, pdb, scop)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
       AjPScop scop
    OUTPUT:
       RETVAL

AjPScop
ajXyzScopNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzScopDel (pthis)
       AjPScop &pthis
    OUTPUT:
       pthis

AjBool
ajXyzScopRead (inf, entry, thys)
       AjPFile inf
       AjPStr entry
       AjPScop &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzScopReadC (inf, entry, thys)
       AjPFile inf
       char *entry
       AjPScop &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzScopReadAll (fptr, list)
       AjPFile fptr
       AjPList &list
    OUTPUT:
       RETVAL
       list

void
ajXyzScopWrite (outf, thys)
       AjPFile outf
       AjPScop thys

AjPStr
ajXyzScopToPdb (scop, pdb)
       AjPStr scop
       AjPStr &pdb
    OUTPUT:
       RETVAL
       pdb

AjBool
ajXyzScopToSp (scop, spr, list)
       AjPStr scop
       AjPStr &spr
       AjPList list
    OUTPUT:
       RETVAL
       spr

AjBool
ajXyzScopToAcc (scop, acc, list)
       AjPStr scop
       AjPStr &acc
       AjPList list
    OUTPUT:
       RETVAL
       acc

AjBool
ajXyzScopToScophit (source, target)
       AjPScop source
       AjPScophit& target
    OUTPUT:
       RETVAL
       target

ajint
ajXyzScopBinSearch (id, arr, siz)
       AjPStr id
       AjPScop &arr
       ajint siz
    OUTPUT:
       RETVAL
       arr

ajint
ajXyzScopCompId (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

AjBool
ajXyzScopCopy (to, from)
       AjPScop &to
       AjPScop from
    OUTPUT:
       RETVAL
       to

AjPScopcla
ajXyzScopclaNew (chains)
       ajint chains
    OUTPUT:
       RETVAL

void
ajXyzScopclaDel (thys)
       AjPScopcla &thys
    OUTPUT:
       thys

AjBool
ajXyzScopclaRead (inf, entry, thys)
       AjPFile inf
       AjPStr entry
       AjPScopcla &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzScopclaReadC (inf, entry, thys)
       AjPFile inf
       char *entry
       AjPScopcla &thys
    OUTPUT:
       RETVAL
       thys

AjPScopdes
ajXyzScopdesNew ()
    OUTPUT:
       RETVAL

void
ajXyzScopdesDel (ptr)
       AjPScopdes &ptr
    OUTPUT:
       ptr

AjBool
ajXyzScopdesRead (inf, entry, thys)
       AjPFile inf
       AjPStr entry
       AjPScopdes &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzScopdesReadC (inf, entry, thys)
       AjPFile inf
       char *entry
       AjPScopdes &thys
    OUTPUT:
       RETVAL
       thys

AjPScophit
ajXyzScophitNew ()
    OUTPUT:
       RETVAL

void
ajXyzScophitDel (pthis)
       AjPScophit &pthis
    OUTPUT:
       pthis

AjBool
ajXyzScophitsToHitlist (in, out, iter)
       AjPList in
       AjPHitlist &out
       AjIList &iter
    OUTPUT:
       RETVAL
       out
       iter

AjBool
ajXyzScophitsOverlap (h1, h2, n)
       AjPScophit h1
       AjPScophit h2
       ajint n
    OUTPUT:
       RETVAL

AjBool
ajXyzScophitsOverlapAcc (h1, h2, n)
       AjPScophit h1
       AjPScophit h2
       ajint n
    OUTPUT:
       RETVAL

AjBool
ajXyzScophitCopy (to, from)
       AjPScophit &to
       AjPScophit from
    OUTPUT:
       RETVAL
       to

AjPList
ajXyzScophitListCopy (ptr)
       AjPList ptr
    OUTPUT:
       RETVAL

AjBool
ajXyzScophitToHit (to, from)
       AjPHit &to
       AjPScophit from
    OUTPUT:
       RETVAL
       to

AjBool
ajXyzScophitCheckTarget (ptr)
       AjPScophit ptr
    OUTPUT:
       RETVAL

AjBool
ajXyzScophitTarget (h)
       AjPScophit &h
    OUTPUT:
       RETVAL
       h

AjBool
ajXyzScophitTarget2 (h)
       AjPScophit &h
    OUTPUT:
       RETVAL
       h

AjBool
ajXyzScophitTargetLowPriority (h)
       AjPScophit &h
    OUTPUT:
       RETVAL
       h

AjBool
ajXyzScophitMergeInsertThis (list, hit1, hit2, iter)
       AjPList list
       AjPScophit hit1
       AjPScophit hit2
       AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajXyzScophitMergeInsertOther (list, hit1, hit2)
       AjPList list
       AjPScophit hit1
       AjPScophit hit2
    OUTPUT:
       RETVAL

AjPScophit
ajXyzScophitMerge (hit1, hit2)
       AjPScophit hit1
       AjPScophit hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompSpr (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompStart (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompFold (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompSfam (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompFam (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzScophitCompAcc (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

AjPHit
ajXyzHitNew ()
    OUTPUT:
       RETVAL

void
ajXyzHitDel (pthis)
       AjPHit &pthis
    OUTPUT:
       pthis

AjBool
ajXyzHitsOverlap (h1, h2, n)
       AjPHit h1
       AjPHit h2
       ajint n
    OUTPUT:
       RETVAL

ajint
ajXyzCompScore (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzCompScoreInv (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

ajint
ajXyzCompId (hit1, hit2)
       char *hit1
       char *hit2
    OUTPUT:
       RETVAL

AjPHitlist
ajXyzHitlistNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzHitlistDel (pthis)
       AjPHitlist &pthis
    OUTPUT:
       pthis

AjBool
ajXyzHitlistRead (inf, delim, thys)
       AjPFile inf
       char *delim
       AjPHitlist &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzHitlistReadNode (scopf, list, fam, sfam, fold, class)
       AjPFile scopf
       AjPList &list
       AjPStr fam
       AjPStr sfam
       AjPStr fold
       AjPStr class
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistReadFam (scopf, fam, sfam, fold, class, list)
       AjPFile scopf
       AjPStr fam
       AjPStr sfam
       AjPStr fold
       AjPStr class
       AjPList& list
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistReadSfam (scopf, fam, sfam, fold, class, list)
       AjPFile scopf
       AjPStr fam
       AjPStr sfam
       AjPStr fold
       AjPStr class
       AjPList& list
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistReadFold (scopf, fam, sfam, fold, class, list)
       AjPFile scopf
       AjPStr fam
       AjPStr sfam
       AjPStr fold
       AjPStr class
       AjPList& list
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistWrite (outf, thys)
       AjPFile outf
       AjPHitlist thys
    OUTPUT:
       RETVAL

AjBool
ajXyzHitlistToScophits (in, out)
       AjPList in
       AjPList &out
    OUTPUT:
       RETVAL
       out

AjBool
ajXyzHitlistClassify (hits, targets, thresh)
       AjPHitlist &hits
       AjPList targets
       ajint thresh
    OUTPUT:
       RETVAL
       hits

AjBool
ajXyzHitlistPriorityHigh (list)
       AjPHitlist &list
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistPriorityLow (list)
       AjPHitlist &list
    OUTPUT:
       RETVAL
       list

AjBool
ajXyzHitlistToThreeScophits (in, fam, sfam, fold)
       AjPList in
       AjPList &fam
       AjPList &sfam
       AjPList &fold
    OUTPUT:
       RETVAL
       fam
       sfam
       fold

AjBool
ajXyzHitlistsWriteFasta (list, outf)
       AjPList &list
       AjPFile &outf
    OUTPUT:
       RETVAL
       list
       outf

AjBool
ajXyzPrintPdbSeqresChain (errf, outf, pdb, chn)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
       ajint chn
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbSeqresDomain (errf, outf, pdb, scop)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
       AjPScop scop
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbAtomChain (outf, pdb, mod, chn)
       AjPFile outf
       AjPPdb pdb
       ajint mod
       ajint chn
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbAtomDomain (errf, outf, pdb, scop, mod)
       AjPFile errf
       AjPFile outf
       AjPPdb pdb
       AjPScop scop
       ajint mod
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbHeterogen (outf, pdb, mod)
       AjPFile outf
       AjPPdb pdb
       ajint mod
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbText (outf, str, prefix)
       AjPFile outf
       AjPStr str
       char *prefix
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbHeader (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbHeaderScop (outf, scop)
       AjPFile outf
       AjPScop scop
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbTitle (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbCompnd (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbSource (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbEmptyRemark (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzPrintPdbResolution (outf, pdb)
       AjPFile outf
       AjPPdb pdb
    OUTPUT:
       RETVAL

AjBool
ajXyzScopalgRead (inf, thys)
       AjPFile inf
       AjPScopalg &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzScopalgWrite (outf, scop)
       AjPFile outf
       AjPScopalg scop
    OUTPUT:
       RETVAL

AjBool
ajXyzScopalgWriteClustal (align, outf)
       AjPScopalg align
       AjPFile& outf
    OUTPUT:
       RETVAL
       outf

AjBool
ajXyzScopalgWriteClustal2 (align, outf)
       AjPScopalg align
       AjPFile& outf
    OUTPUT:
       RETVAL
       outf

AjPScopalg
ajXyzScopalgNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzScopalgDel (pthis)
       AjPScopalg &pthis
    OUTPUT:
       pthis

ajint
ajXyzScopalgGetseqs (thys, arr)
       AjPScopalg thys
       AjPStr *&arr
    OUTPUT:
       RETVAL
       arr

AjPCmap
ajXyzCmapNew (dim)
       ajint dim
    OUTPUT:
       RETVAL

void
ajXyzCmapDel (pthis)
       AjPCmap &pthis
    OUTPUT:
       pthis

AjBool
ajXyzCmapRead (inf, mode, chn, mod, thys)
       AjPFile inf
       ajint mode
       ajint chn
       ajint mod
       AjPCmap &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzCmapReadC (inf, chn, mod, thys)
       AjPFile inf
       char chn
       ajint mod
       AjPCmap &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzCmapReadI (inf, chn, mod, thys)
       AjPFile inf
       ajint chn
       ajint mod
       AjPCmap &thys
    OUTPUT:
       RETVAL
       thys

float
ajXyzVdwRad (atm, vdw)
       AjPAtom atm
       AjPVdwall vdw
    OUTPUT:
       RETVAL

AjPVdwall
ajXyzVdwallNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzVdwallDel (pthis)
       AjPVdwall &pthis
    OUTPUT:
       pthis

AjBool
ajXyzVdwallRead (inf, thys)
       AjPFile inf
       AjPVdwall &thys
    OUTPUT:
       RETVAL
       thys

AjPVdwres
ajXyzVdwresNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzVdwresDel (pthis)
       AjPVdwres &pthis
    OUTPUT:
       pthis

AjPScorealg
ajXyzScorealgNew (len)
       ajint len
    OUTPUT:
       RETVAL

void
ajXyzScorealgDel (pthis)
       AjPScorealg &pthis
    OUTPUT:
       pthis

AjPSigdat
ajXyzSigdatNew (nres, ngap)
       ajint nres
       ajint ngap
    OUTPUT:
       RETVAL

AjPSigpos
ajXyzSigposNew (ngap)
       ajint ngap
    OUTPUT:
       RETVAL

void
ajXyzSigdatDel (pthis)
       AjPSigdat &pthis
    OUTPUT:
       pthis

void
ajXyzSigposDel (thys)
       AjPSigpos &thys
    OUTPUT:
       thys

AjPHitidx
ajXyzHitidxNew ()
    OUTPUT:
       RETVAL

void
ajXyzHitidxDel (pthis)
       AjPHitidx &pthis
    OUTPUT:
       pthis

ajint
ajXyzHitidxBinSearch (id, arr, siz)
       AjPStr id
       AjPHitidx &arr
       ajint siz
    OUTPUT:
       RETVAL
       arr

AjPSignature
ajXyzSignatureNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzSignatureDel (pthis)
       AjPSignature &pthis
    OUTPUT:
       pthis

AjBool
ajXyzSignatureRead (inf, thys)
       AjPFile inf
       AjPSignature &thys
    OUTPUT:
       RETVAL
       thys

AjBool
ajXyzSignatureWrite (outf, thys)
       AjPFile outf
       AjPSignature thys
    OUTPUT:
       RETVAL

AjBool
ajXyzSignatureCompile (S, gapo, gape, matrix)
       AjPSignature &S
       float gapo
       float gape
       AjPMatrixf matrix
    OUTPUT:
       RETVAL
       S

AjBool
ajXyzSignatureAlignSeq (S, seq, hit, nterm)
       AjPSignature S
       AjPSeq seq
       AjPHit &hit
       ajint nterm
    OUTPUT:
       RETVAL
       hit

AjBool
ajXyzSignatureAlignSeqall (sig, db, n, hits, nterm)
       AjPSignature sig
       AjPSeqall db
       ajint n
       AjPHitlist &hits
       ajint nterm
    OUTPUT:
       RETVAL
       hits

AjBool
ajXyzSignatureHitsWrite (outf, sig, hits)
       AjPFile outf
       AjPSignature sig
       AjPHitlist hits
    OUTPUT:
       RETVAL

AjBool
ajXyzSignatureAlignWrite (outf, sig, hits)
       AjPFile outf
       AjPSignature sig
       AjPHitlist hits
    OUTPUT:
       RETVAL

AjPHetent
ajXyzHetentNew ()
    OUTPUT:
       RETVAL

void
ajXyzHetentDel (ptr)
       AjPHetent &ptr
    OUTPUT:
       ptr

AjPHet
ajXyzHetNew (n)
       ajint n
    OUTPUT:
       RETVAL

void
ajXyzHetDel (ptr)
       AjPHet &ptr
    OUTPUT:
       ptr

AjBool
ajXyzHetRawRead (fptr, ptr)
       AjPFile fptr
       AjPHet &ptr
    OUTPUT:
       RETVAL
       ptr

AjBool
ajXyzHetRead (fptr, ptr)
       AjPFile fptr
       AjPHet &ptr
    OUTPUT:
       RETVAL
       ptr

AjBool
ajXyzHetWrite (fptr, ptr, dogrep)
       AjPFile fptr
       AjPHet ptr
       AjBool dogrep
    OUTPUT:
       RETVAL


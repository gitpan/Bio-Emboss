#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_index		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajindex.h: automatically generated

AjPBtcache
ajBtreeCacheNewC (file, ext, idir, mode, pagesize, order, fill, level, cachesize)
       const char *file
       const char *ext
       const char *idir
       const char *mode
       ajint pagesize
       ajint order
       ajint fill
       ajint level
       ajint cachesize
    OUTPUT:
       RETVAL

AjPBtpage
ajBtreeCacheRead (cache, pageno)
       AjPBtcache  cache
       ajlong pageno
    OUTPUT:
       RETVAL

AjPBtpage
ajBtreeCacheWrite (cache, pageno)
       AjPBtcache  cache
       ajlong pageno
    OUTPUT:
       RETVAL

void
ajBtreeCreateRootNode (cache, rootpage)
       AjPBtcache  cache
       ajlong rootpage

AjPBtpage
ajBtreeFindInsert (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

void
ajBtreeCacheDel (thys)
       AjPBtcache  &thys
    OUTPUT:
       thys

void
ajBtreeInsertId (cache, id)
       AjPBtcache  cache
       const AjPBtId  id

void
ajBtreeIdDel (thys)
       AjPBtId  &thys
    OUTPUT:
       thys

AjPBtId
ajBtreeIdNew ()
    OUTPUT:
       RETVAL

AjPBtId
ajBtreeIdFromKey (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

void
ajBtreeWriteParams (cache, fn, ext, idir)
       const AjPBtcache  cache
       const char *fn
       const char *ext
       const char *idir

void
ajBtreeReadParams (fn, ext, idir, order, nperbucket, pagesize, level, cachesize, sorder, snperbucket, count, kwlimit)
       const char *fn
       const char *ext
       const char *idir
       ajint &order
       ajint &nperbucket
       ajint &pagesize
       ajint &level
       ajint &cachesize
       ajint &sorder
       ajint &snperbucket
       ajlong &count
       ajint &kwlimit
    OUTPUT:
       order
       nperbucket
       pagesize
       level
       cachesize
       sorder
       snperbucket
       count
       kwlimit

void
ajBtreeCacheSync (cache, rootpage)
       AjPBtcache  cache
       ajlong rootpage

AjBool
ajBtreeDeleteId (cache, id)
       AjPBtcache  cache
       const AjPBtId  id
    OUTPUT:
       RETVAL

AjPBtWild
ajBtreeWildNew (cache, wild)
       AjPBtcache  cache
       const AjPStr wild
    OUTPUT:
       RETVAL

AjPBtKeyWild
ajBtreeKeyWildNew (cache, wild)
       AjPBtcache  cache
       const AjPStr wild
    OUTPUT:
       RETVAL

void
ajBtreeWildDel (thys)
       AjPBtWild  &thys
    OUTPUT:
       thys

void
ajBtreeKeyWildDel (thys)
       AjPBtKeyWild  &thys
    OUTPUT:
       thys

AjPBtpage
ajBtreeFindInsertW (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

AjPBtId
ajBtreeIdFromKeyW (cache, wild)
       AjPBtcache  cache
       AjPBtWild  wild
    OUTPUT:
       RETVAL

void
ajBtreeListFromKeyW (cache, key, idlist)
       AjPBtcache  cache
       const char *key
       AjPList idlist

AjPBtId
ajBtreeIdFromKeywordW (cache, wild, idcache)
       AjPBtcache  cache
       AjPBtKeyWild  wild
       AjPBtcache  idcache
    OUTPUT:
       RETVAL


void
ajBtreeListFromKeywordW (cache, key, idcache, btidlist)
       AjPBtcache  cache
       const char *key
       AjPBtcache  idcache
       AjPList btidlist
    OUTPUT:


AjBool
ajBtreeReplaceId (cache, rid)
       AjPBtcache  cache
       const AjPBtId  rid
    OUTPUT:
       RETVAL

ajint
ajBtreeReadEntries (filename, indexdir, seqfiles, reffiles)
       const char *filename
       const char *indexdir
       AjPStr* &seqfiles
       AjPStr* &reffiles
    OUTPUT:
       RETVAL
       seqfiles
       reffiles

void
ajBtreeInsertDupId (cache, id)
       AjPBtcache  cache
       AjPBtId  id

AjPList
ajBtreeDupFromKey (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

AjPBtPri
ajBtreePriNew ()
    OUTPUT:
       RETVAL

void
ajBtreePriDel (thys)
       AjPBtPri  &thys
    OUTPUT:
       thys

AjPBtPri
ajBtreePriFromKeyword (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

AjPBtcache
ajBtreeSecCacheNewC (file, ext, idir, mode, pagesize, order, fill, level, cachesize, sorder, slevel, sfill, count, kwlimit)
       const char *file
       const char *ext
       const char *idir
       const char *mode
       ajint pagesize
       ajint order
       ajint fill
       ajint level
       ajint cachesize
       ajint sorder
       ajint slevel
       ajint sfill
       ajlong count
       ajint kwlimit
    OUTPUT:
       RETVAL

AjPBtpage
ajBtreeSecFindInsert (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

void
ajBtreeInsertSecId (cache, id)
       AjPBtcache  cache
       const AjPStr id

AjBool
ajBtreeSecFromId (cache, key)
       AjPBtcache  cache
       const char *key
    OUTPUT:
       RETVAL

AjPList
ajBtreeSecLeafList (cache, rootblock)
       AjPBtcache  cache
       ajlong rootblock
    OUTPUT:
       RETVAL

AjBool
ajBtreeVerifyId (cache, rootblock, id)
       AjPBtcache  cache
       ajlong rootblock
       const char *id
    OUTPUT:
       RETVAL

void
ajBtreeInsertKeyword (cache, pri)
       AjPBtcache  cache
       const AjPBtPri  pri

void
ajBtreeLockTest (cache)
       AjPBtcache  cache


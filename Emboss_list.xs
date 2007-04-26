#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_list		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajlist.c: automatically generated

AjPList
ajListNew ()
    OUTPUT:
       RETVAL

AjPList
ajListstrNew ()
    OUTPUT:
       RETVAL

void
ajListPush (thys, x)
       AjPList thys
       char& x

void
ajListstrPush (thys, x)
       AjPList thys
       AjPStr x

void
ajListTrace (thys)
       const AjPList thys

void
ajListstrTrace (thys)
       const AjPList thys

AjPList
ajListNewArgs (x)
       char& x
    OUTPUT:
       RETVAL

AjPList
ajListstrNewArgs (x)
       AjPStr x
    OUTPUT:
       RETVAL

AjPListNode
ajListNodesNew (x)
       char& x
    OUTPUT:
       RETVAL

void
ajListAppend (thys, morenodes)
       AjPList thys
       AjPListNode& morenodes
    OUTPUT:
       morenodes

void
ajListPushApp (thys, x)
       AjPList thys
       char& x

void
ajListstrPushApp (thys, x)
       AjPList thys
       AjPStr x

AjPList
ajListstrCopy (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

AjPList
ajListCopy (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

ajuint
ajListstrClone (thys, newlist)
       const AjPList thys
       AjPList newlist
    OUTPUT:
       RETVAL

AjBool
ajListFirst (thys, x)
       const AjPList thys
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListLast (thys, x)
       const AjPList thys
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListNth (thys, n, x)
       const AjPList thys
       ajuint n
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListPop (thys, x)
       AjPList thys
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListPeek (thys, x)
       const AjPList thys
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPop (thys, x)
       AjPList thys
       AjPStr& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPeek (thys, x)
       const AjPList thys
       AjPStr& x
    OUTPUT:
       RETVAL
       x

void
ajListReverse (thys)
       AjPList thys

void
ajListstrReverse (thys)
       AjPList thys

ajuint
ajListLength (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

ajuint
ajListstrLength (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

void
ajListFree (pthis)
       AjPList& pthis
    OUTPUT:
       pthis

void
ajListstrFree (pthis)
       AjPList& pthis
    OUTPUT:
       pthis

void
ajListDel (pthis)
       AjPList& pthis
    OUTPUT:
       pthis

void
ajListstrDel (pthis)
       AjPList& pthis
    OUTPUT:
       pthis

ajuint
ajListToArray (thys, array)
       const AjPList thys
       void**& array
    OUTPUT:
       RETVAL
       array

ajuint
ajListstrToArray (thys, array)
       const AjPList thys
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

ajuint
ajListstrToArrayApp (thys, array)
       const AjPList thys
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

AjIList
ajListIter (thys)
       AjPList thys
    OUTPUT:
       RETVAL

AjIList
ajListIterRead (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

AjIList
ajListIterBack (thys)
       AjPList thys
    OUTPUT:
       RETVAL

AjIList
ajListIterBackRead (thys)
       const AjPList thys
    OUTPUT:
       RETVAL

AjBool
ajListIterDone (iter)
       const AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajListIterBackDone (iter)
       const AjIList iter
    OUTPUT:
       RETVAL

void
ajListIterFree (iter)
       AjIList& iter
    OUTPUT:
       iter

AjBool
ajListIterMore (iter)
       const AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajListIterBackMore (iter)
       const AjIList iter
    OUTPUT:
       RETVAL

void*
ajListIterNext (iter)
       AjIList iter
    OUTPUT:
       RETVAL

void*
ajListIterBackNext (iter)
       AjIList iter
    OUTPUT:
       RETVAL

void
ajListRemove (iter)
       AjIList iter

void
ajListstrRemove (iter)
       AjIList iter

void
ajListInsert (iter, x)
       AjIList iter
       char& x

void
ajListstrInsert (iter, x)
       AjIList iter
       AjPStr x

void
ajListIterTrace (thys)
       const AjIList thys

void
ajListstrIterTrace (thys)
       const AjIList thys

void
ajListPushList (thys, pmore)
       AjPList thys
       AjPList& pmore
    OUTPUT:
       pmore

void
ajListstrPushList (thys, pmore)
       AjPList thys
       AjPList& pmore
    OUTPUT:
       pmore

AjBool
ajListPopEnd (thys, x)
       AjPList thys
       void*& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPopEnd (thys, x)
       AjPList thys
       AjPStr& x
    OUTPUT:
       RETVAL
       x

void
ajListDummyFunction (array)
       void** array

void
ajListExit ()

void
ajListFreeData (pthis)
       AjPList& pthis
    OUTPUT:
       pthis


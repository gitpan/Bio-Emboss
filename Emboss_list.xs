#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_list		PACKAGE = Bio::Emboss		

 # code from ajlist.h: automatically generated

void
ajListAppend (list, tail)
       AjPList list
       AjPListNode tail

AjPList
ajListCopy (list)
       AjPList list
    OUTPUT:
       RETVAL

void
ajListDel (list)
       AjPList &list
    OUTPUT:
       list

void
ajListFree (list)
       AjPList &list
    OUTPUT:
       list

void
ajListInsert (iter, x)
       AjIList iter
       char * x

void
ajListInsertOld (iter, x)
       AjIList iter
       char * x

AjIList
ajListIter (listhead)
       AjPList listhead
    OUTPUT:
       RETVAL

AjIList
ajListIterBack (thys)
       AjPList thys
    OUTPUT:
       RETVAL

AjBool
ajListIterBackDone (iter)
       AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajListIterBackMore (iter)
       AjIList iter
    OUTPUT:
       RETVAL

void*
ajListIterBackNext (iter)
       AjIList iter
    OUTPUT:
       RETVAL

void
ajListIterFree (iter)
       AjIList iter

void*
ajListIterNext (iter)
       AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajListIterMore (iter)
       AjIList iter
    OUTPUT:
       RETVAL

AjBool
ajListIterDone (iter)
       AjIList iter
    OUTPUT:
       RETVAL

void
ajListIterTrace (iter)
       AjIList iter

ajint
ajListLength (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPList
ajListNew ()
    OUTPUT:
       RETVAL

void
ajListPush (list, x)
       AjPList list
       char * x

void
ajListPushApp (list, x)
       AjPList list
       char * x

void
ajListReverse (list)
       AjPList list

AjPList
ajListstrCopy (list)
       AjPList list
    OUTPUT:
       RETVAL

void
ajListstrDel (list)
       AjPList &list
    OUTPUT:
       list

void
ajListstrFree (list)
       AjPList &list
    OUTPUT:
       list

void
ajListstrIterTrace (iter)
       AjIList iter

ajint
ajListstrLength (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPList
ajListstrNew ()
    OUTPUT:
       RETVAL

AjBool
ajListstrPop (list, x)
       AjPList list
       AjPStr& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPopEnd (thys, x)
       AjPList thys
       AjPStr &x
    OUTPUT:
       RETVAL
       x

void
ajListstrPush (list, x)
       AjPList list
       AjPStr x

void
ajListstrPushApp (list, x)
       AjPList list
       AjPStr x

void
ajListstrReverse (list)
       AjPList list

ajint
ajListstrToArray (list, array)
       AjPList list
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

void
ajListstrTrace (list)
       AjPList list

void
ajListTrace (list)
       AjPList list

void
ajListPushList (list, pmore)
       AjPList list
       AjPList& pmore
    OUTPUT:
       pmore

void
ajListstrPushList (list, pmore)
       AjPList list
       AjPList& pmore
    OUTPUT:
       pmore

void
ajListRemove (iter)
       AjIList iter

ajint
ajListstrClone (thys, newlist)
       AjPList thys
       AjPList newlist
    OUTPUT:
       RETVAL

void
ajListstrInsert (iter, x)
       AjIList iter
       AjPStr x

void
ajListstrRemove (iter)
       AjIList iter

void
ajListSort (thys, aa)
       AjPList thys
       void* aa


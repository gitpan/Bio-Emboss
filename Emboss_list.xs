#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

#include "ajlist.h"

MODULE = Bio::Emboss_list		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajlist.h: automatically generated

void
ajListAppend (list, tail)
       AjPList  list
       AjPListNode & tail
    OUTPUT:
       tail

AjPList
ajListCopy (list)
       const AjPList  list
    OUTPUT:
       RETVAL

void
ajListDel (list)
       AjPList  &list
    OUTPUT:
       list

void
ajListExit ()


void
ajListFree (list)
       AjPList  &list
    OUTPUT:
       list






void
ajListInsert (iter, x)
       AjIList  iter
       char * x

AjIList
ajListIter (list)
       AjPList  list
    OUTPUT:
       RETVAL

AjIList
ajListIterBack (list)
       AjPList  list
    OUTPUT:
       RETVAL

AjIList
ajListIterBackRead (list)
       const AjPList  list
    OUTPUT:
       RETVAL

AjIList
ajListIterRead (list)
       const AjPList  list
    OUTPUT:
       RETVAL

AjBool
ajListIterBackDone (iter)
       const AjIList  iter
    OUTPUT:
       RETVAL

AjBool
ajListIterBackMore (iter)
       const AjIList  iter
    OUTPUT:
       RETVAL

void*
ajListIterBackNext (iter)
       AjIList  iter
    OUTPUT:
       RETVAL

void
ajListIterFree (iter)
       AjIList & iter
    OUTPUT:
       iter

void*
ajListIterNext (iter)
       AjIList  iter
    OUTPUT:
       RETVAL

AjBool
ajListIterMore (iter)
       const AjIList  iter
    OUTPUT:
       RETVAL

AjBool
ajListIterDone (iter)
       const AjIList  iter
    OUTPUT:
       RETVAL

void
ajListIterTrace (iter)
       const AjIList  iter


ajint
ajListLength (list)
       const AjPList  list
    OUTPUT:
       RETVAL










AjPList
ajListNew ()
    OUTPUT:
       RETVAL


void
ajListPush (list, x)
       AjPList  list
       char * x

void
ajListPushApp (list, x)
       AjPList  list
       char * x

void
ajListReverse (list)
       AjPList  list

AjPList
ajListstrCopy (list)
       const AjPList  list
    OUTPUT:
       RETVAL

void
ajListstrDel (list)
       AjPList  &list
    OUTPUT:
       list

void
ajListstrFree (list)
       AjPList  &list
    OUTPUT:
       list

void
ajListstrIterTrace (iter)
       const AjIList  iter

ajint
ajListstrLength (list)
       const AjPList  list
    OUTPUT:
       RETVAL


AjPList
ajListstrNew ()
    OUTPUT:
       RETVAL

AjBool
ajListstrPeek (list, x)
       const AjPList  list
       AjPStr& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPop (list, x)
       AjPList  list
       AjPStr& x
    OUTPUT:
       RETVAL
       x

AjBool
ajListstrPopEnd (thys, x)
       AjPList  thys
       AjPStr &x
    OUTPUT:
       RETVAL
       x

void
ajListstrPush (list, x)
       AjPList  list
       AjPStr x

void
ajListstrPushApp (list, x)
       AjPList  list
       AjPStr x

void
ajListstrReverse (list)
       AjPList  list

ajint
ajListstrToArray (list, array)
       const AjPList  list
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

ajint
ajListstrToArrayApp (list, array)
       const AjPList  list
       AjPStr*& array
    OUTPUT:
       RETVAL
       array

void
ajListstrTrace (list)
       const AjPList  list


void
ajListTrace (list)
       const AjPList  list



void
ajListPushList (list, pmore)
       AjPList  list
       AjPList & pmore
    OUTPUT:
       pmore

void
ajListstrPushList (list, pmore)
       AjPList  list
       AjPList & pmore
    OUTPUT:
       pmore

void
ajListRemove (iter)
       AjIList  iter

ajint
ajListstrClone (thys, newlist)
       const AjPList  thys
       AjPList  newlist
    OUTPUT:
       RETVAL

void
ajListstrInsert (iter, x)
       AjIList  iter
       AjPStr x

void
ajListstrRemove (iter)
       AjIList  iter


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_table		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajtable.c: automatically generated

void*
ajTableGet (table, key)
       const AjPTable table
       const char* key
    OUTPUT:
       RETVAL

void*
ajTableKey (table, key)
       const AjPTable table
       const char* key
    OUTPUT:
       RETVAL

void
ajTableTrace (table)
       const AjPTable table

void
ajStrTableTrace (table)
       const AjPTable table

void*
ajTablePut (table, key, value)
       AjPTable table
       const char* key
       char& value
    OUTPUT:
       RETVAL

ajint
ajTableLength (table)
       const AjPTable table
    OUTPUT:
       RETVAL

void*
ajTableRemove (table, key)
       AjPTable table
       const char* key
    OUTPUT:
       RETVAL

void**
ajTableToarray (table, end)
       const AjPTable table
       char& end
    OUTPUT:
       RETVAL

void
ajTableFree (table)
       AjPTable& table
    OUTPUT:
       table

AjPTable
ajStrTableNewCaseC (hint)
       ajint hint
    OUTPUT:
       RETVAL

AjPTable
ajStrTableNewCase (hint)
       ajint hint
    OUTPUT:
       RETVAL

AjPTable
ajStrTableNewC (hint)
       ajint hint
    OUTPUT:
       RETVAL

AjPTable
ajStrTableNew (hint)
       ajint hint
    OUTPUT:
       RETVAL

ajuint
ajStrTableHashCaseC (key, hashsize)
       const char* key
       ajuint hashsize
    OUTPUT:
       RETVAL

ajuint
ajStrTableHashCase (key, hashsize)
       const char* key
       ajuint hashsize
    OUTPUT:
       RETVAL

ajuint
ajStrTableHashC (key, hashsize)
       const char* key
       ajuint hashsize
    OUTPUT:
       RETVAL

ajuint
ajStrTableHash (key, hashsize)
       const char* key
       ajuint hashsize
    OUTPUT:
       RETVAL

ajint
ajStrTableCmpCaseC (x, y)
       const char* x
       const char* y
    OUTPUT:
       RETVAL

ajint
ajStrTableCmpCase (x, y)
       const char* x
       const char* y
    OUTPUT:
       RETVAL

ajint
ajStrTableCmpC (x, y)
       const char* x
       const char* y
    OUTPUT:
       RETVAL

ajint
ajStrTableCmp (x, y)
       const char* x
       const char* y
    OUTPUT:
       RETVAL

void
ajStrTablePrint (table)
       const AjPTable table

void
ajStrTablePrintC (table)
       const AjPTable table

void
ajStrTableFree (ptable)
       AjPTable& ptable
    OUTPUT:
       ptable

void
ajTableExit ()


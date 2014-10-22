#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embdata		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embdata.h: automatically generated

void
embDataListDel (data)
       AjPList &data
    OUTPUT:
       data

AjPTable
embDataListGetTable (fullList, required)
       const AjPList fullList
       ajuint required
    OUTPUT:
       RETVAL

void
embDataListGetTables (fullList, returnList, required)
       const AjPList fullList
       AjPList returnList
       ajuint required

void
embDataListRead (data, file)
       AjPList data
       AjPFile file


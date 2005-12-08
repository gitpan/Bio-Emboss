#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embgroup		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embgroup.h: automatically generated

ajint
embGrpCompareTwoGnodes (a, b)
       const char * a
       const char * b
    OUTPUT:
       RETVAL


void
embGrpGroupsListDel (groupslist)
       AjPList &groupslist
    OUTPUT:
       groupslist

void
embGrpKeySearchProgs (newlist, glist, key)
       AjPList newlist
       const AjPList glist
       const AjPStr key

void
embGrpKeySearchSeeAlso (newlist, appgroups, alpha, glist, key)
       AjPList newlist
       AjPList &appgroups
       const AjPList alpha
       const AjPList glist
       const AjPStr key
    OUTPUT:
       appgroups


void
embGrpOutputGroupsList (outfile, groupslist, showprogs, html, link1, link2)
       AjPFile outfile
       const AjPList groupslist
       AjBool showprogs
       AjBool html
       const AjPStr link1
       const AjPStr link2

void
embGrpOutputProgsList (outfile, progslist, html, link1, link2)
       AjPFile outfile
       const AjPList progslist
       AjBool html
       const AjPStr link1
       const AjPStr link2

void
embGrpSortGroupsList (groupslist)
       AjPList groupslist

void
embGrpMakeUnique (list)
       AjPList list


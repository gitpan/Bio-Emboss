#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embgroup		PACKAGE = Bio::Emboss		

ajint
embGrpCompareTwoGnodes (a, b)
       char * a
       char * b
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_10_0

void
embGrpGetProgGroups (glist, alpha, env, emboss, embassy, embassyname, explode, colon, gui)
       AjPList glist
       AjPList alpha
       char **env
       AjBool emboss
       AjBool embassy
       const AjPStr embassyname
       AjBool explode
       AjBool colon
       AjBool gui

#else

void
embGrpGetProgGroups (glist, alpha, env, emboss, embassy, explode, colon, gui)
       AjPList glist
       AjPList alpha
       char **env
       AjBool emboss
       AjBool embassy
       AjBool explode
       AjBool colon
       AjBool gui

#endif

void
embGrpGroupsListDel (groupslist)
       AjPList &groupslist
    OUTPUT:
       groupslist

void
embGrpKeySearchProgs (newlist, glist, key)
       AjPList newlist
       AjPList glist
       AjPStr key

void
embGrpKeySearchSeeAlso (newlist, appgroups, alpha, glist, key)
       AjPList newlist
       AjPList &appgroups
       AjPList alpha
       AjPList glist
       AjPStr key
    OUTPUT:
       appgroups

GPnode
embGrpMakeNewGnode (name)
       AjPStr name
    OUTPUT:
       RETVAL

GPnode
embGrpMakeNewPnode (name, doc)
       AjPStr name
       AjPStr doc
    OUTPUT:
       RETVAL

void
embGrpOutputGroupsList (outfile, groupslist, showprogs, html, link1, link2)
       AjPFile outfile
       AjPList groupslist
       AjBool showprogs
       AjBool html
       AjPStr link1
       AjPStr link2

void
embGrpOutputProgsList (outfile, progslist, html, link1, link2)
       AjPFile outfile
       AjPList progslist
       AjBool html
       AjPStr link1
       AjPStr link2

void
embGrpSortGroupsList (groupslist)
       AjPList groupslist

void
embGrpMakeUnique (list)
       AjPList list


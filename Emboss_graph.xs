#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_graph		PACKAGE = Bio::Emboss		

 # code from ajgraph.h: automatically generated

#ifdef HAVE_EMBOSS_2_9_0

INCLUDE: Emboss_graph_29.xsx

#else

INCLUDE: Emboss_graph_25.xsx

#endif

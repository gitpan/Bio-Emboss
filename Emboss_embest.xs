#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

#include "embest.h"

MODULE = Bio::Emboss_embest		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embest.h: automatically generated

EmbPEstAlign
embEstAlignNonRecursive (est, genome, match, mismatch, gap_penalty, intron_penalty, splice_penalty, splice_sites, backtrack, needleman, init_path)
        const AjPSeq est
       const AjPSeq genome
       ajint match
       ajint mismatch
       ajint gap_penalty
       ajint intron_penalty
       ajint splice_penalty
       const AjPSeq splice_sites
       ajint backtrack
       ajint needleman
       ajint init_path 
    OUTPUT:
       RETVAL

EmbPEstAlign
embEstAlignLinearSpace (est, genome, match, mismatch, gap_penalty, intron_penalty, splice_penalty, splice_sites, max_area)
        const AjPSeq est
       const AjPSeq genome
       ajint match
       ajint mismatch
       ajint gap_penalty
       ajint intron_penalty
       ajint splice_penalty
       const AjPSeq splice_sites
       float max_area 
    OUTPUT:
       RETVAL

AjPSeq
embEstFindSpliceSites (genome, direction)
        const AjPSeq genome
       ajint direction 
    OUTPUT:
       RETVAL

void
embEstFreeAlign (ge)
        EmbPEstAlign&  ge 

ajint
embEstGetSeed ()
    OUTPUT:
       RETVAL

void
embEstMatInit (match, mismatch, gap, neutral, pad_char)
       ajint match
       ajint mismatch
       ajint gap
       ajint neutral
       char pad_char

void
embEstOutBlastStyle (ofile, genome, est, ge, match, mismatch, gap_penalty, intron_penalty, splice_penalty, gapped, reverse)
        AjPFile ofile
       const AjPSeq genome
       const AjPSeq est
       const EmbPEstAlign  ge
       ajint match
       ajint mismatch
       ajint gap_penalty
       ajint intron_penalty
       ajint splice_penalty
       ajint gapped
       ajint reverse  
    OUTPUT:


void
embEstPrintAlign (ofile, genome, est, ge, width)
        AjPFile ofile
       const AjPSeq genome
       const AjPSeq est
       const EmbPEstAlign  ge
       ajint width 
    OUTPUT:


void
embEstSetDebug ()

void
embEstSetVerbose ()

AjPSeq
embEstShuffleSeq (seq, in_place, seed)
        AjPSeq seq
       ajint in_place
       ajint &seed 
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embword		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embword.h: automatically generated

AjPList
embWordBuildMatchTable (seq1MatchTable, seq2, orderit)
       AjPTable &seq1MatchTable
       const AjPSeq seq2
       ajint orderit
    OUTPUT:
       RETVAL
       seq1MatchTable

void
embWordClear ()

void
embWordFreeTable (table)
       AjPTable &table
    OUTPUT:
       table

ajint
embWordGetTable (table, seq)
       AjPTable &table
       const AjPSeq seq
    OUTPUT:
       RETVAL
       table

void
embWordLength (wordlen)
       ajint wordlen

AjBool
embWordMatchIter (iter, start1, start2, len)
       AjIList iter
       ajint& start1
       ajint& start2
       ajint& len
    OUTPUT:
       RETVAL
       start1
       start2
       len

void
embWordMatchListDelete (plist)
       AjPList& plist
    OUTPUT:
       plist

void
embWordMatchListPrint (file, list)
       AjPFile file
       const AjPList list

void
embWordPrintTable (table)
       const AjPTable table

void
embWordPrintTableF (table, outf)
       const AjPTable table
       AjPFile outf

void
embWordMatchListConvToFeat (list, tab1, tab2, seq1, seq2)
       const AjPList list
       AjPFeattable &tab1
       AjPFeattable &tab2
       const AjPSeq seq1
       const AjPSeq seq2
    OUTPUT:
       tab1
       tab2

void
embWordMatchMin (matchlist, seq1length, seq2length)
       AjPList matchlist
       ajint seq1length
       int seq2length


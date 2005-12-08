#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_embdbi		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from embdbi.h: automatically generated

ajint
embDbiCmpId (a, b)
       const char * a
       const char * b
    OUTPUT:
       RETVAL

ajint
embDbiCmpFieldId (a, b)
       const char * a
       const char * b
    OUTPUT:
       RETVAL

ajint
embDbiCmpFieldField (a, b)
       const char * a
       const char * b
    OUTPUT:
       RETVAL


EmbPEntry
embDbiEntryNew (nfields)
       ajint nfields
    OUTPUT:
       RETVAL

EmbPField
embDbiFieldNew ()
    OUTPUT:
       RETVAL

AjPFile
embDbiFileIn (dbname, extension)
       const AjPStr dbname
       const char* extension
    OUTPUT:
       RETVAL

AjPFile
embDbiFileIndex (indexdir, field, extension)
       const AjPStr indexdir
       const AjPStr field
       const char* extension
    OUTPUT:
       RETVAL

AjPList
embDbiFileList (dir, wildfile, trim)
       const AjPStr dir
       const AjPStr wildfile
       AjBool trim
    OUTPUT:
       RETVAL

AjPList
embDbiFileListExc (dir, wildfile, exclude)
       const AjPStr dir
       const AjPStr wildfile
       const AjPStr exclude
    OUTPUT:
       RETVAL

AjPFile
embDbiFileOut (dbname, extension)
       const AjPStr dbname
       const char* extension
    OUTPUT:
       RETVAL

AjPFile
embDbiFileSingle (dbname, extension, num)
       const AjPStr dbname
       const char* extension
       ajint num
    OUTPUT:
       RETVAL

AjBool
embDbiFlatOpenlib (lname, libr)
       const AjPStr lname
       AjPFile& libr
    OUTPUT:
       RETVAL
       libr


void
embDbiHeaderSize (file, filesize, recordcnt)
       AjPFile file
       ajint filesize
       ajint recordcnt

void
embDbiMaxlen (token, maxlen)
       AjPStr& token
       ajint& maxlen
    OUTPUT:
       token
       maxlen

void
embDbiMemEntry (idlist, fieldList, nfields, entry, ifile)
       AjPList idlist
       AjPList& fieldList
       ajint nfields
       EmbPEntry  entry
       ajint ifile
    OUTPUT:
       fieldList




void
embDbiRmEntryFile (dbname, cleanup)
       const AjPStr dbname
       AjBool cleanup

void
embDbiRmFile (dbname, ext, nfiles, cleanup)
       const AjPStr dbname
       const char* ext
       ajint nfiles
       AjBool cleanup

void
embDbiRmFileI (dbname, ext, ifile, cleanup)
       const AjPStr dbname
       const char* ext
       ajint ifile
       AjBool cleanup

void
embDbiSortClose (elistfile, alistfile, nfields)
       AjPFile& elistfile
       AjPFile& alistfile
       ajint nfields
    OUTPUT:
       elistfile
       alistfile

void
embDbiSortFile (dbname, ext1, ext2, nfiles, cleanup, sortopt)
       const AjPStr dbname
       const char* ext1
       const char* ext2
       ajint nfiles
       AjBool cleanup
       const AjPStr sortopt


ajint
embDbiSortWriteEntry (entFile, maxidlen, dbname, nfiles, cleanup, sortopt)
       AjPFile entFile
       ajint maxidlen
       const AjPStr dbname
       ajint nfiles
       AjBool cleanup
       const AjPStr sortopt
    OUTPUT:
       RETVAL


void
embDbiSysCmd (cmdstr)
       const AjPStr cmdstr


void
embDbiWriteDivisionRecord (file, maxnamlen, recnum, datfile, seqfile)
       AjPFile file
       ajint maxnamlen
       short recnum
       const AjPStr datfile
       const AjPStr seqfile

void
embDbiWriteEntryRecord (file, maxidlen, id, rpos, spos, filenum)
       AjPFile file
       ajint maxidlen
       const AjPStr id
       ajint rpos
       ajint spos
       short filenum

void
embDbiWriteHit (file, idnum)
       AjPFile file
       ajint idnum

void
embDbiWriteTrg (file, maxfieldlen, idnum, idcnt, hitstr)
       AjPFile file
       ajint maxfieldlen
       ajint idnum
       ajint idcnt
       const AjPStr hitstr


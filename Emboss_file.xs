#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_file		PACKAGE = Bio::Emboss		

 # code from ajfile.h: automatically generated

void
ajFileBuffClear (thys, lines)
       AjPFileBuff thys
       ajint lines

void
ajFileBuffDel (pthis)
       AjPFileBuff& pthis
    OUTPUT:
       pthis

AjBool
ajFileBuffEmpty (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

AjBool
ajFileBuffEnd (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

AjBool
ajFileBuffEof (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

AjPFile
ajFileBuffFile (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

void
ajFileBuffFix (thys)
       AjPFileBuff thys

FILE*
ajFileBuffFp (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

void
ajFileBuffFreeClear (thys)
       AjPFileBuff thys

AjBool
ajFileBuffGet (thys, pdest)
       AjPFileBuff thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileBuffGetL (thys, pdest, fpos)
       AjPFileBuff thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

AjBool
ajFileBuffGetStore (thys, pdest, store, astr)
       AjPFileBuff thys
       AjPStr& pdest
       AjBool store
       AjPStr &astr
    OUTPUT:
       RETVAL
       pdest
       astr

void
ajFileBuffLoad (thys)
       AjPFileBuff thys

void
ajFileBuffLoadC (thys, str)
       AjPFileBuff thys
       char* str

void
ajFileBuffLoadS (thys, str)
       AjPFileBuff thys
       AjPStr str

AjPFileBuff
ajFileBuffNew ()
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDC (dir, filename)
       AjPStr dir
       char* filename
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDF (dir, filename)
       AjPStr dir
       AjPStr filename
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDW (dir, wildfile)
       AjPStr dir
       AjPStr wildfile
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewFile (file)
       AjPFile file
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewIn (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewInList (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewS (data)
       AjPStr data
    OUTPUT:
       RETVAL

void
ajFileBuffNobuff (thys)
       AjPFileBuff thys

void
ajFileBuffReset (thys)
       AjPFileBuff thys

void
ajFileBuffResetPos (thys)
       AjPFileBuff thys

AjBool
ajFileBuffSetFile (pthys, file)
       AjPFileBuff& pthys
       AjPFile file
    OUTPUT:
       RETVAL
       pthys

ajint
ajFileBuffSize ()
    OUTPUT:
       RETVAL

void
ajFileBuffStripHtml (thys)
       AjPFileBuff thys

#ifndef HAVE_EMBOSS_2_9_0

ajint
ajFileBuffStripSrs (thys)
       AjPFileBuff thys
    OUTPUT:
       RETVAL

#endif

void
ajFileBuffTrace (thys)
       AjPFileBuff thys

void
ajFileBuffTraceFull (thys, nlines, nfree)
       AjPFileBuff thys
       size_t nlines
       size_t nfree

void
ajFileClose (pthis)
       AjPFile &pthis
    OUTPUT:
       pthis

void
ajFileDataDirNew (tfile, dir, fnew)
       AjPStr tfile
       AjPStr dir
       AjPFile &fnew
    OUTPUT:
       fnew

void
ajFileDataDirNewC (s, d, f)
       char *s
       char* d
       AjPFile &f
    OUTPUT:
       f

void
ajFileDataNew (filename, newfileptr)
       AjPStr filename
       AjPFile &newfileptr
    OUTPUT:
       newfileptr

void
ajFileDataNewC (s, f)
       char *s
       AjPFile &f
    OUTPUT:
       f

void
ajFileDataNewWrite (tfile, fnew)
       AjPStr tfile
       AjPFile &fnew
    OUTPUT:
       fnew

AjBool
ajFileDir (dir)
       AjPStr& dir
    OUTPUT:
       RETVAL
       dir

void
ajFileDirFix (dir)
       AjPStr& dir
    OUTPUT:
       dir

AjBool
ajFileDirUp (dir)
       AjPStr& dir
    OUTPUT:
       RETVAL
       dir

AjBool
ajFileDirPath (dir)
       AjPStr& dir
    OUTPUT:
       RETVAL
       dir

AjBool
ajFileDirTrim (name)
       AjPStr& name
    OUTPUT:
       RETVAL
       name

void
ajFileExit ()

AjPList
ajFileFileList (files)
       AjPStr files
    OUTPUT:
       RETVAL

FILE*
ajFileFp (thys)
       AjPFile thys
    OUTPUT:
       RETVAL

AjBool
ajFileGetwd (dir)
       AjPStr& dir
    OUTPUT:
       RETVAL
       dir

AjPStr
ajFileGetName (thys)
       AjPFile thys
    OUTPUT:
       RETVAL

AjBool
ajFileGets (thys, pdest)
       AjPFile thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileGetsL (thys, pdest, fpos)
       AjPFile thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

AjBool
ajFileGetsTrim (thys, pdest)
       AjPFile thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileGetsTrimL (thys, pdest, fpos)
       AjPFile thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

ajlong
ajFileLength (fname)
       AjPStr fname
    OUTPUT:
       RETVAL

const char* 
ajFileName (thys)
       AjPFile thys
    OUTPUT:
       RETVAL

AjBool
ajFileNameDirSet (filename, dir)
       AjPStr& filename
       AjPStr dir
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameDirSetC (filename, dir)
       AjPStr& filename
       char* dir
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameExt (filename, extension)
       AjPStr& filename
       AjPStr extension
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameExtC (filename, extension)
       AjPStr& filename
       char* extension
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameShorten (fname)
       AjPStr &fname
    OUTPUT:
       RETVAL
       fname

AjBool
ajFileNameTrim (fname)
       AjPStr &fname
    OUTPUT:
       RETVAL
       fname

AjPFile
ajFileNew ()
    OUTPUT:
       RETVAL

AjPFile
ajFileNewApp (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDC (dir, filename)
       AjPStr dir
       char* filename
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDF (dir, filename)
       AjPStr dir
       AjPStr filename
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDW (dir, wildfile)
       AjPStr dir
       AjPStr wildfile
    OUTPUT:
       RETVAL

AjPFile
ajFileNewF (file)
       FILE* file
    OUTPUT:
       RETVAL
       file

AjPFile
ajFileNewIn (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInC (name)
       char *name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInPipe (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInList (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOut (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOutD (dir, name)
       AjPStr dir
       AjPStr name
    OUTPUT:
       RETVAL

void
ajFileOutHeader (thys)
       AjPFile thys

void
ajFileOutClose (pthis)
       AjPFile &pthis
    OUTPUT:
       pthis

AjBool
ajFileNext (thys)
       AjPFile thys
    OUTPUT:
       RETVAL

size_t
ajFileRead (ptr, element_size, count, thys)
       char * ptr
       size_t element_size
       size_t count
       AjPFile thys
    OUTPUT:
       RETVAL

FILE*
ajFileReopen (thys, name)
       AjPFile thys
       AjPStr name
    OUTPUT:
       RETVAL

AjBool
ajFileReadLine (thys, pdest)
       AjPFile thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

ajuint
ajFileReadUint (thys, Bigendian)
       AjPFile thys
       AjBool Bigendian
    OUTPUT:
       RETVAL

ajint
ajFileScan (path, filename, result, show, dolist, list, rlist, recurs, outf)
       AjPStr path
       AjPStr filename
       AjPList &result
       AjBool show
       AjBool dolist
       AjPList &list
       AjPList rlist
       AjBool recurs
       AjPFile outf
    OUTPUT:
       RETVAL
       result
       list

ajint
ajFileSeek (thys, offset, wherefrom)
       AjPFile thys
       ajlong offset
       ajint wherefrom
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_9_0

AjBool
ajFileStat (filename, mode)
       const AjPStr filename
       ajint mode
    OUTPUT:
       RETVAL

#else

AjBool
ajFileStat (filename, mode)
       AjPStr &filename
       ajint mode
    OUTPUT:
       RETVAL
       filename

#endif

AjBool
ajFileStderr (file)
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFileStdin (file)
       AjPFile file
    OUTPUT:
       RETVAL

AjBool
ajFileStdout (file)
       AjPFile file
    OUTPUT:
       RETVAL

ajlong
ajFileTell (thys)
       AjPFile thys
    OUTPUT:
       RETVAL

#ifdef HAVE_EMBOSS_2_9_0

const char*
ajFileTempName (dir)
       const char *dir
    OUTPUT:
       RETVAL

#else

char*
ajFileTempName (dir)
       char *dir
    OUTPUT:
       RETVAL

#endif

AjBool
ajFileTestSkip (fullname, exc, inc, keep, ignoredirectory)
       AjPStr fullname
       AjPStr exc
       AjPStr inc
       AjBool keep
       AjBool ignoredirectory
    OUTPUT:
       RETVAL

void
ajFileTrace (thys)
       AjPFile thys

void
ajFileUnbuffer (thys)
       AjPFile thys

size_t
ajFileWrite (thys, ptr, element_size, count)
       AjPFile thys
       char * ptr
       size_t element_size
       size_t count
    OUTPUT:
       RETVAL

ajint
ajFileWriteByte (thys, ch)
       AjPFile thys
       char ch
    OUTPUT:
       RETVAL

ajint
ajFileWriteChar (thys, str, len)
       AjPFile thys
       char* str
       ajint len
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt2 (thys, i)
       AjPFile thys
       short i
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt4 (thys, i)
       AjPFile thys
       ajint i
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt8 (thys, i)
       AjPFile thys
       ajlong i
    OUTPUT:
       RETVAL

ajint
ajFileWriteStr (thys, str, len)
       AjPFile thys
       AjPStr str
       ajint len
    OUTPUT:
       RETVAL


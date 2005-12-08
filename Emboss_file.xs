#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_file		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajfile.h: automatically generated

void
ajDirDel (pthis)
       AjPDir & pthis
    OUTPUT:
       pthis

void
ajDiroutDel (pthis)
       AjPDir & pthis
    OUTPUT:
       pthis

AjPStr
ajDirExt (thys)
       const AjPDir  thys
    OUTPUT:
       RETVAL

AjPStr
ajDirName (thys)
       const AjPDir  thys
    OUTPUT:
       RETVAL

AjPDir
ajDirNew (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPDir
ajDirNewS (name, ext)
       const AjPStr name
       const AjPStr ext
    OUTPUT:
       RETVAL

AjPDir
ajDirNewSS (name, prefix, ext)
       const AjPStr name
       const AjPStr prefix
       const AjPStr ext
    OUTPUT:
       RETVAL

AjPDir
ajDiroutNew (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPDir
ajDiroutNewS (name, ext)
       const AjPStr name
       const AjPStr ext
    OUTPUT:
       RETVAL

AjPDir
ajDiroutNewSS (name, prefix, ext)
       const AjPStr name
       const AjPStr prefix
       const AjPStr ext
    OUTPUT:
       RETVAL

AjBool
ajFileBuffBuff (thys)
       AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffClear (thys, lines)
       AjPFileBuff  thys
       ajint lines

void
ajFileBuffClearStore (thys, lines, rdline, store, astr)
       AjPFileBuff  thys
       ajint lines
       const AjPStr rdline
       AjBool store
       AjPStr &astr
    OUTPUT:
       astr

void
ajFileBuffDel (pthis)
       AjPFileBuff & pthis
    OUTPUT:
       pthis

AjBool
ajFileBuffEmpty (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

AjBool
ajFileBuffEnd (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

AjBool
ajFileBuffEof (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

AjPFile
ajFileBuffFile (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffFix (thys)
       AjPFileBuff  thys

FILE*
ajFileBuffFp (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffFreeClear (thys)
       AjPFileBuff  thys

AjBool
ajFileBuffGet (thys, pdest)
       AjPFileBuff  thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileBuffGetL (thys, pdest, fpos)
       AjPFileBuff  thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

AjBool
ajFileBuffGetStore (thys, pdest, store, astr)
       AjPFileBuff  thys
       AjPStr& pdest
       AjBool store
       AjPStr &astr
    OUTPUT:
       RETVAL
       pdest
       astr

AjBool
ajFileBuffGetStoreL (thys, pdest, fpos, store, astr)
       AjPFileBuff  thys
       AjPStr& pdest
       ajlong& fpos
       AjBool store
       AjPStr &astr
    OUTPUT:
       RETVAL
       pdest
       fpos
       astr

AjBool
ajFileBuffIsBuffered (thys)
       const AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffLoad (thys)
       AjPFileBuff  thys

void
ajFileBuffLoadC (thys, str)
       AjPFileBuff  thys
       const char* str

void
ajFileBuffLoadS (thys, str)
       AjPFileBuff  thys
       const AjPStr str

AjPFileBuff
ajFileBuffNew ()
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDC (dir, filename)
       const AjPStr dir
       const char* filename
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDF (dir, filename)
       const AjPStr dir
       const AjPStr filename
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDW (dir, wildfile)
       const AjPStr dir
       const AjPStr wildfile
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewDWE (dir, wildfile, exclude)
       const AjPStr dir
       const AjPStr wildfile
       const AjPStr exclude
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewF (fp)
       FILE *fp
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewFile (file)
       AjPFile  file
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewIn (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewInList (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPFileBuff
ajFileBuffNewS (data)
       const AjPStr data
    OUTPUT:
       RETVAL

AjBool
ajFileBuffNobuff (thys)
       AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffPrint (thys, title)
       const AjPFileBuff  thys
       const char* title

void
ajFileBuffReset (thys)
       AjPFileBuff  thys

void
ajFileBuffResetPos (thys)
       AjPFileBuff  thys

void
ajFileBuffResetStore (thys, store, astr)
       AjPFileBuff  thys
       AjBool store
       AjPStr &astr
    OUTPUT:
       astr

AjBool
ajFileBuffSetFile (pthys, file, samefile)
       AjPFileBuff & pthys
       AjPFile  file
       AjBool   samefile
    OUTPUT:
       RETVAL
       pthys

ajint
ajFileBuffSize ()
    OUTPUT:
       RETVAL

void
ajFileBuffStripHtml (thys)
       AjPFileBuff  thys

AjBool
ajFileBuffStripHtmlPre (thys)
       AjPFileBuff  thys
    OUTPUT:
       RETVAL

void
ajFileBuffTrace (thys)
       const AjPFileBuff  thys

void
ajFileBuffTraceFull (thys, nlines, nfree)
       const AjPFileBuff  thys
       size_t nlines
       size_t nfree

void
ajFileClose (pthis)
       AjPFile  &pthis
    OUTPUT:
       pthis

void
ajFileDataDirNew (tfile, dir, fnew)
       const AjPStr tfile
       const AjPStr dir
       AjPFile  &fnew
    OUTPUT:
       fnew

void
ajFileDataDirNewC (s, d, f)
       const char *s
       const char* d
       AjPFile&  f
    OUTPUT:
       f

void
ajFileDataNew (filename, newfileptr)
       const AjPStr filename
       AjPFile  &newfileptr
    OUTPUT:
       newfileptr

void
ajFileDataNewC (s, f)
       const char *s
       AjPFile  &f
    OUTPUT:
       f

void
ajFileDataNewWrite (tfile, fnew)
       const AjPStr tfile
       AjPFile  &fnew
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

AjBool
ajFileExtnTrim (name)
       AjPStr& name
    OUTPUT:
       RETVAL
       name

AjBool
ajFileDirExtnTrim (name)
       AjPStr& name
    OUTPUT:
       RETVAL
       name

AjBool
ajFileEof (thys)
       const AjPFile  thys
    OUTPUT:
       RETVAL

void
ajFileExit ()

AjPList
ajFileFileList (files)
       const AjPStr files
    OUTPUT:
       RETVAL

FILE*
ajFileFp (thys)
       const AjPFile  thys
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
       const AjPFile  thys
    OUTPUT:
       RETVAL

AjBool
ajFileGets (thys, pdest)
       AjPFile  thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileGetsL (thys, pdest, fpos)
       AjPFile  thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

AjBool
ajFileGetsTrim (thys, pdest)
       AjPFile  thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

AjBool
ajFileGetsTrimL (thys, pdest, fpos)
       AjPFile  thys
       AjPStr &pdest
       ajlong& fpos
    OUTPUT:
       RETVAL
       pdest
       fpos

AjBool
ajFileHasDir (name)
       const AjPStr name
    OUTPUT:
       RETVAL

ajlong
ajFileLength (fname)
       const AjPStr fname
    OUTPUT:
       RETVAL

const char*
ajFileName (thys)
       const AjPFile  thys
    OUTPUT:
       RETVAL

AjBool
ajFileNameDir (filename, dir, name)
       AjPStr& filename
       const AjPDir  dir
       const AjPStr name
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameDirSet (filename, dir)
       AjPStr& filename
       const AjPStr dir
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameDirSetC (filename, dir)
       AjPStr& filename
       const char* dir
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameExt (filename, extension)
       AjPStr& filename
       const AjPStr extension
    OUTPUT:
       RETVAL
       filename

AjBool
ajFileNameExtC (filename, extension)
       AjPStr& filename
       const char* extension
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
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDirF (dir, filename)
       const AjPDir  dir
       const AjPStr filename
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDC (dir, filename)
       const AjPStr dir
       const char* filename
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDF (dir, filename)
       const AjPStr dir
       const AjPStr filename
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDW (dir, wildfile)
       const AjPStr dir
       const AjPStr wildfile
    OUTPUT:
       RETVAL

AjPFile
ajFileNewDWE (dir, wildfile, exclude)
       const AjPStr dir
       const AjPStr wildfile
       const AjPStr exclude
    OUTPUT:
       RETVAL

AjPFile
ajFileNewF (file)
       FILE* file
    OUTPUT:
       RETVAL


AjPFile
ajFileNewIn (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInC (name)
       const char *name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInPipe (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewInList (list)
       AjPList list
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOut (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOutC (name)
       const char *name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOutD (dir, name)
       const AjPStr dir
       const AjPStr name
    OUTPUT:
       RETVAL

AjPFile
ajFileNewOutDir (dir, name)
       const AjPDir  dir
       const AjPStr name
    OUTPUT:
       RETVAL

void
ajFileOutHeader (thys)
       AjPFile  thys

void
ajFileOutClose (pthis)
       AjPFile  &pthis
    OUTPUT:
       pthis

AjBool
ajFileNext (thys)
       AjPFile  thys
    OUTPUT:
       RETVAL

size_t
ajFileRead (ptr, element_size, count, thys)
       char * ptr
       size_t element_size
       size_t count
       AjPFile  thys
    OUTPUT:
       RETVAL


AjBool
ajFileReadAppend (thys, pbuff)
       AjPFile  thys
       AjPStr& pbuff
    OUTPUT:
       RETVAL
       pbuff

AjBool
ajFileReadLine (thys, pdest)
       AjPFile  thys
       AjPStr &pdest
    OUTPUT:
       RETVAL
       pdest

ajuint
ajFileReadUint (thys, Bigendian)
       AjPFile  thys
       AjBool Bigendian
    OUTPUT:
       RETVAL

FILE*
ajFileReopen (thys, name)
       AjPFile  thys
       const AjPStr name
    OUTPUT:
       RETVAL

ajint
ajFileScan (path, filename, result, show, dolist, list, rlist, recurs, outf)
       const AjPStr path
       const AjPStr filename
       AjPList &result
       AjBool show
       AjBool dolist
       AjPList &list
       AjPList rlist
       AjBool recurs
       AjPFile  outf
    OUTPUT:
       RETVAL
       result
       list


ajint
ajFileSeek (thys, offset, wherefrom)
       AjPFile  thys
       ajlong offset
       ajint wherefrom
    OUTPUT:
       RETVAL

AjBool
ajFileSetDir (pname, dir)
       AjPStr &pname
       const AjPStr dir
    OUTPUT:
       RETVAL
       pname

AjBool
ajFileStat (filename, mode)
       const AjPStr filename
       ajint mode
    OUTPUT:
       RETVAL

AjBool
ajFileStderr (file)
       const AjPFile  file
    OUTPUT:
       RETVAL

AjBool
ajFileStdin (file)
       const AjPFile  file
    OUTPUT:
       RETVAL

AjBool
ajFileStdout (file)
       const AjPFile  file
    OUTPUT:
       RETVAL

ajlong
ajFileTell (thys)
       const AjPFile  thys
    OUTPUT:
       RETVAL

const char*
ajFileTempName (dir)
       const char *dir
    OUTPUT:
       RETVAL

AjBool
ajFileTestSkip (fullname, exc, inc, keep, ignoredirectory)
       const AjPStr fullname
       const AjPStr exc
       const AjPStr inc
       AjBool keep
       AjBool ignoredirectory
    OUTPUT:
       RETVAL

void
ajFileTrace (thys)
       const AjPFile  thys

void
ajFileUnbuffer (thys)
       AjPFile  thys

size_t
ajFileWrite (thys, ptr, element_size, count)
       AjPFile  thys
       const char * ptr
       size_t element_size
       size_t count
    OUTPUT:
       RETVAL

ajint
ajFileWriteByte (thys, ch)
       AjPFile  thys
       char ch
    OUTPUT:
       RETVAL

ajint
ajFileWriteChar (thys, str, len)
       AjPFile  thys
       const char* str
       ajint len
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt2 (thys, i)
       AjPFile  thys
       short i
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt4 (thys, i)
       AjPFile  thys
       ajint i
    OUTPUT:
       RETVAL

ajint
ajFileWriteInt8 (thys, i)
       AjPFile  thys
       ajlong i
    OUTPUT:
       RETVAL

ajint
ajFileWriteStr (thys, str, len)
       AjPFile  thys
       const AjPStr str
       ajint len
    OUTPUT:
       RETVAL

void
ajOutfileClose (pthis)
       AjPOutfile & pthis
    OUTPUT:
       pthis

void
ajOutfileDel (pthis)
       AjPOutfile & pthis
    OUTPUT:
       pthis

AjPFile
ajOutfileFile (thys)
       const AjPOutfile  thys
    OUTPUT:
       RETVAL

AjPStr
ajOutfileFormat (thys)
       const AjPOutfile  thys
    OUTPUT:
       RETVAL

FILE*
ajOutfileFp (thys)
       const AjPOutfile  thys
    OUTPUT:
       RETVAL

AjPOutfile
ajOutfileNew (name)
       const AjPStr name
    OUTPUT:
       RETVAL


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss.h"

MODULE = Bio::Emboss_nam		PACKAGE = Bio::Emboss		

 # code from ajnam.h: automatically generated

AjBool
ajNamDatabase (name)
       AjPStr name
    OUTPUT:
       RETVAL

AjBool
ajNamDbAccess (dbname, qry, method)
       AjPStr dbname
       AjPSeqQuery qry
       AjPStr& method
    OUTPUT:
       RETVAL
       method

AjBool
ajNamDbDetails (name, type, id, qry, all, comment, release)
       AjPStr name
       AjPStr& type
       AjBool& id
       AjBool& qry
       AjBool& all
       AjPStr& comment
       AjPStr& release
    OUTPUT:
       RETVAL
       type
       id
       qry
       all
       comment
       release

AjBool
ajNamDbGetAlias (dbname, dbalias)
       AjPStr dbname
       AjPStr& dbalias
    OUTPUT:
       RETVAL
       dbalias

AjBool
ajNamDbGetDbalias (dbname, dbalias)
       AjPStr dbname
       AjPStr& dbalias
    OUTPUT:
       RETVAL
       dbalias

AjBool
ajNamDbGetUrl (dbname, url)
       AjPStr dbname
       AjPStr& url
    OUTPUT:
       RETVAL
       url

AjBool
ajNamDbData (qry)
       AjPSeqQuery qry
    OUTPUT:
       RETVAL

AjBool
ajNamDbQuery (qry)
       AjPSeqQuery qry
    OUTPUT:
       RETVAL

AjBool
ajNamDbTest (dbname)
       AjPStr dbname
    OUTPUT:
       RETVAL

void
ajNamDebugOrigin ()

void
ajNamDebugDatabases ()

void
ajNamDebugEnvironmentals ()

void
ajNamEnvironmentals ()

void
ajNamExit ()

AjBool
ajNamGetenv (name, value)
       AjPStr name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamGetValue (name, value)
       AjPStr name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamGetValueC (name, value)
       char *name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

void
ajNamInit (prefix)
       char* prefix

void
ajNamListDatabases ()

void
ajNamListListDatabases (dbnames)
       AjPList dbnames

void
ajNamListOrigin ()

void
ajNamPrintDbAttr (outf, full)
       AjPFile outf
       AjBool full

AjBool
ajNamResolve (name)
       AjPStr& name
    OUTPUT:
       RETVAL
       name

AjBool
ajNamRoot (root)
       AjPStr& root
    OUTPUT:
       RETVAL
       root

AjBool
ajNamRootBase (rootbase)
       AjPStr& rootbase
    OUTPUT:
       RETVAL
       rootbase

AjBool
ajNamRootInstall (root)
       AjPStr& root
    OUTPUT:
       RETVAL
       root

AjBool
ajNamRootPack (pack)
       AjPStr& pack
    OUTPUT:
       RETVAL
       pack

AjBool
ajNamRootVersion (version)
       AjPStr& version
    OUTPUT:
       RETVAL
       version


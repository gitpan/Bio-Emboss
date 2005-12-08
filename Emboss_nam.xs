#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_nam		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajnam.h: automatically generated

AjBool
ajNamDatabase (name)
       const AjPStr name
    OUTPUT:
       RETVAL

AjBool
ajNamDbAccess (dbname, qry, method)
       const AjPStr dbname
       const AjPSeqQuery qry
       AjPStr& method
    OUTPUT:
       RETVAL
       method

AjBool
ajNamDbDetails (name, type, id, qry, all, comment, release)
       const AjPStr name
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
       const AjPStr dbname
       AjPStr& dbalias
    OUTPUT:
       RETVAL
       dbalias

AjBool
ajNamDbGetDbalias (dbname, dbalias)
       const AjPStr dbname
       AjPStr& dbalias
    OUTPUT:
       RETVAL
       dbalias

AjBool
ajNamDbGetUrl (dbname, url)
       const AjPStr dbname
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
       const AjPStr dbname
    OUTPUT:
       RETVAL

void
ajNamDebugOrigin ()

void
ajNamDebugDatabases ()

void
ajNamDebugResources ()

void
ajNamDebugVariables ()

void
ajNamExit ()

AjBool
ajNamGetenv (name, value)
       const AjPStr name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamGetenvC (name, value)
       const char* name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamGetValue (name, value)
       const AjPStr name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamGetValueC (name, value)
       const char *name
       AjPStr& value
    OUTPUT:
       RETVAL
       value

void
ajNamInit (prefix)
       const char* prefix

AjBool
ajNamIsDbname (name)
       const AjPStr name
    OUTPUT:
       RETVAL

void
ajNamListDatabases ()

void
ajNamListListDatabases (dbnames)
       AjPList dbnames

void
ajNamListListResources (dbnames)
       AjPList dbnames

void
ajNamListOrigin ()

void
ajNamPrintDbAttr (outf, full)
       AjPFile outf
       AjBool full

void
ajNamPrintRsAttr (outf, full)
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

AjBool
ajNamRsAttrValue (name, attribute, value)
       const AjPStr name
       const AjPStr attribute
       AjPStr &value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamRsAttrValueC (name, attribute, value)
       const char *name
       const char *attribute
       AjPStr &value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamRsListValue (name, value)
       const AjPStr name
       AjPStr &value
    OUTPUT:
       RETVAL
       value

AjBool
ajNamSetControl (optionName)
       const char* optionName
    OUTPUT:
       RETVAL

void
ajNamVariables ()


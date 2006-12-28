#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"
#include "bio_emboss_config.h"

MODULE = Bio::Emboss_dom		PACKAGE = Bio::Emboss		

PROTOTYPES: ENABLE

 # code from ajdom.c: automatically generated

AjPDomNodeEntry
ajDomNodeListAppend (list, key)
       AjPDomNodeList list
       AjPDomNode key
    OUTPUT:
       RETVAL
       list

AjPDomNode
ajDomNodeAppendChild (list, key)
       AjPDomNode list
       AjPDomNode key
    OUTPUT:
       RETVAL
       list

AjPDomNode
ajDomRemoveChild (node, child)
       AjPDomNode node
       AjPDomNode child
    OUTPUT:
       RETVAL
       node

AjPBool
ajDomNodeListExists (list, child)
       AjPDomNodeList list
       AjPDomNode child
    OUTPUT:
       RETVAL

AjPNodeEntry
ajDomNodeListRemove (list, child)
       AjPDomNodeList list
       AjPDomNode child
    OUTPUT:
       RETVAL
       list

void
ajDomDocumentDestroyNode (doc, node)
       AjPDomDocument doc
       AjPDomNode node
    OUTPUT:
       doc
       node

void
ajDomDocumentDestroyNodeList (doc, list, donodes)
       AjPDomDocument doc
       AjPDomNodeList list
       AjBool donodes
    OUTPUT:
       doc
       list

AjPDomNodeList
ajDomCreateNodeList (doc)
       AjPDomDocument doc
    OUTPUT:
       RETVAL

AjPDomNode
ajDomDocumentCreateNode (doc, nodetype)
       AjPDomDocument doc
       ajuint nodetype
    OUTPUT:
       RETVAL

AjPDomDocumentType
ajDomImplementationCreateDocumentType (doc, qualname, publicid, systemid)
       AjPDomDocument doc
       AjPStr qualname
       AjPStr publicid
       AjPStr systemid
    OUTPUT:
       RETVAL

AjPDomDocumentType
ajDomImplementationCreateDocumentTypeC (doc, qualname, publicid, systemid)
       AjPDomDocument doc
       char * qualname
       char * publicid
       char * systemid
    OUTPUT:
       RETVAL

AjPDomDocument
ajDomImplementationCreateDocument (uri, qualname, publicid)
       AjPStr uri
       AjPStr qualname
       AjPDomDocumentType publicid
    OUTPUT:
       RETVAL

AjPDomDocument
ajDomImplementationCreateDocumentC (uri, qualname, publicid)
       char * uri
       char * qualname
       AjPDomDocumentType publicid
    OUTPUT:
       RETVAL

AjPDomNode
ajDomNodeMapGetItem (map, name)
       AjPDomNodeMap map
       const AjPStr name
    OUTPUT:
       RETVAL

AjPDomNode
ajDomNodeMapGetItemC (map, name)
       AjPDomNodeMap map
       const char * name
    OUTPUT:
       RETVAL

AjPStr
ajDomElementGetAttribute (element, name)
       AjPDomElement element
       const AjPStr name
    OUTPUT:
       RETVAL

AjPStr
ajDomElementGetAttributeC (element, name)
       AjPDomElement element
       const char * name
    OUTPUT:
       RETVAL

AjPDomNode
ajDomNodeMapSetItem (map, arg)
       AjPDomNodeMap map
       AjPDomNode arg
    OUTPUT:
       RETVAL

AjPDomNode
ajDomNodeMapRemoveItem (map, name)
       AjPDomNodeMap map
       const AjPStr name
    OUTPUT:
       RETVAL
       map

AjPDomNode
ajDomNodeMapRemoveItemC (map, name)
       AjPDomNodeMap map
       const char * name
    OUTPUT:
       RETVAL
       map

AjPDomNode
ajDomNodeMapItem (map, index)
       AjPDomNodeMap map
       ajint index
    OUTPUT:
       RETVAL
       map

AjPDomNode
ajDomNodeListItem (list, index)
       const AjPDomNodeList list
       ajint index
    OUTPUT:
       RETVAL

void
ajDomElementSetAttribute (element, name, value)
       const AjPDomElement element
       const AjPStr name
       const AjPStr value

void
ajDomElementSetAttributeC (element, name, value)
       const AjPDomElement element
       const char * name
       const char * value

void
ajDomElementRemoveAttribute (element, name)
       const AjPDomElement element
       const AjPStr name

void
ajDomElementRemoveAttributeC (element, name)
       const AjPDomElement element
       const char * name

AjPDomNode
ajDomElementGetAttributeNode (element, name)
       const AjPDomElement element
       const AjPStr name
    OUTPUT:
       RETVAL

AjPDomNode
ajDomElementGetAttributeNodeC (element, name)
       const AjPDomElement element
       const char * name
    OUTPUT:
       RETVAL

AjPDomNode
ajDomElementSetAttributeNode (element, newattr)
       AjPDomElement element
       AjPDomNode newattr
    OUTPUT:
       RETVAL
       element

AjPDomNode
ajDomElementRemoveAttributeNode (element, oldattr)
       AjPDomElement element
       AjPDomNode oldattr
    OUTPUT:
       RETVAL
       element

AjPDomNodeList
ajDomElementGetElementsByTagName (element, tagname)
       AjPDomElement element
       const AjPStr tagname
    OUTPUT:
       RETVAL

AjPDomNodeList
ajDomElementGetElementsByTagNameC (element, tagname)
       AjPDomElement element
       const char * tagname
    OUTPUT:
       RETVAL

void
ajDomElementNormalise (element)
       AjPDomElement element
    OUTPUT:
       element

AjPStr
ajDomCharacterDataSubstringData (data, offset, count)
       AjPDomCharacterData data
       ajint offset
       ajint count
    OUTPUT:
       RETVAL

void
ajDomCharacterDataAppendData (data, arg)
       AjPDomCharacterData data
       const AjPStr arg
    OUTPUT:
       data

void
ajDomCharacterDataAppendDataC (data, arg)
       AjPDomCharacterData data
       const char * arg
    OUTPUT:
       data

void
ajDomCharacterDataInsertData (data, offset, arg)
       AjPDomCharacterData data
       ajint offset
       const AjPStr arg
    OUTPUT:
       data

void
ajDomCharacterDataInsertDataC (data, offset, arg)
       AjPDomCharacterData data
       ajint offset
       const char * arg
    OUTPUT:
       data

void
ajDomCharacterDataDeleteData (data, offset, count)
       AjPDomCharacterData data
       ajint offset
       ajint count
    OUTPUT:
       data

void
ajDomCharacterDataReplaceData (data, offset, count, arg)
       AjPDomCharacterData data
       ajint offset
       ajint count
       const AjPStr arg
    OUTPUT:
       data

void
ajDomCharacterDataReplaceDataC (data, offset, count, arg)
       AjPDomCharacterData data
       ajint offset
       ajint count
       const char * arg
    OUTPUT:
       data

ajint
ajDomCharacterDataGetLength (data)
       AjPDomCharacterData data
    OUTPUT:
       RETVAL

AjPDomText
ajDomTextSplitText (text, offset)
       AjPDomText text
       ajint offset
    OUTPUT:
       RETVAL
       text

AjPDomElement
ajDomDocumentCreateElement (doc, tagname)
       AjPDomDocument doc
       const AjPStr tagname
    OUTPUT:
       RETVAL
       doc

AjPDomElement
ajDomDocumentCreateElementC (doc, tagname)
       AjPDomDocument doc
       const char * tagname
    OUTPUT:
       RETVAL
       doc

AjPDomDocumentFragment
ajDomDocumentCreateDocumentFragment (doc)
       AjPDomDocument doc
    OUTPUT:
       RETVAL
       doc

AjPDomText
ajDomDocumentCreateTextNode (doc, data)
       AjPDomDocument doc
       const AjPStr data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomText
ajDomDocumentCreateTextNodeC (doc, data)
       AjPDomDocument doc
       const char & data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomComment
ajDomDocumentCreateComment (doc, data)
       AjPDomDocument doc
       const AjPStr data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomComment
ajDomDocumentCreateCommentC (doc, data)
       AjPDomDocument doc
       const char & data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomCDATASection
ajDomDocumentCreateCDATASection (doc, data)
       AjPDomDocument doc
       const AjPStr data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomCDATASection
ajDomDocumentCreateCDATASectionC (doc, data)
       AjPDomDocument doc
       const char & data
    OUTPUT:
       RETVAL
       doc
       data

AjPDomAttr
ajDomDocumentCreateAttribute (doc, name)
       AjPDomDocument doc
       const AjPStr name
    OUTPUT:
       RETVAL
       doc
       name

AjPDomAttr
ajDomDocumentCreateAttributeC (doc, name)
       AjPDomDocument doc
       const char & name
    OUTPUT:
       RETVAL
       doc
       name

AjPDomEntityReference
ajDomDocumentCreateEntityReference (doc, name)
       AjPDomDocument doc
       const AjPStr name
    OUTPUT:
       RETVAL
       doc
       name

AjPDomEntityReference
ajDomDocumentCreateEntityReferenceC (doc, name)
       AjPDomDocument doc
       const AjPStr name
    OUTPUT:
       RETVAL
       doc
       name

AjPDomPi
ajDomDocumentCreateProcessingInstruction (doc, target, data)
       AjPDomDocument doc
       const AjPStr target
       const AjPStr data
    OUTPUT:
       RETVAL
       doc

AjPDomPi
ajDomDocumentCreateProcessingInstructionC (doc, target, data)
       AjPDomDocument doc
       const char * target
       const char * data
    OUTPUT:
       RETVAL
       doc

AjPDomNodeList
ajDomDocumentGetElementsByTagName (doc, name)
       AjPDomDocument doc
       const AjPStr name
    OUTPUT:
       RETVAL

AjPDomNodeList
ajDomDocumentGetElementsByTagNameC (doc, name)
       AjPDomDocument doc
       const char * name
    OUTPUT:
       RETVAL

AjPDomDocumentType
ajDomDocumentGetDoctype (doc)
       AjPDomDocument doc
    OUTPUT:
       RETVAL

AjPDomElement
ajDomDocumentGetDocumentElement (doc)
       AjPDomDocument doc
    OUTPUT:
       RETVAL

void
ajDomPrintNode (node, indent)
       AjPDomNode node
       ajint indent

void
ajDomPrintNode2 (node)
       AjPDomNode node

void
ajDomNodePrintNode (node)
       AjPDomNode node

AjPDomNode
ajDomNodeInsertBefore (node, newchild, refchild)
       AjPDomNode node
       AjPDomNode newchild
       AjPDomNode refchild
    OUTPUT:
       RETVAL
       node

AjPDomNode
ajDomNodeReplaceChild (node, newchild, refchild)
       AjPDomNode node
       AjPDomNode newchild
       AjPDomNode refchild
    OUTPUT:
       RETVAL
       node

AjPDomNodeEntry
ajDomNodeListReplace (list, newchild, refchild)
       AjPDomNodeList list
       AjPDomNode newchild
       AjPDomNode refchild
    OUTPUT:
       RETVAL
       list

AjPDomNode
ajDomNodeCloneNode (node, deep)
       AjPDomNode node
       AjBool deep
    OUTPUT:
       RETVAL

AjBool
ajDomNodeHasChildNodes (node)
       const AjPDomNode node
    OUTPUT:
       RETVAL

ajint
ajDomWrite (node, outf)
       AjPDomDocument node
       AjPFile outf
    OUTPUT:
       RETVAL
       outf


#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "emboss_perl.h"

MODULE = Bio::Emboss_str		PACKAGE = Bio::Emboss		

 # code from ajstr.h: automatically generated

char*
ajCharFree (txt)
       char* txt
    OUTPUT:
       RETVAL

char*
ajCharNewC (len, txt)
       ajint len
       char* txt
    OUTPUT:
       RETVAL

char*
ajCharNew (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

char*
ajCharNewL (len)
       ajint len
    OUTPUT:
       RETVAL

char*
ajCharNewLS (size, thys)
       size_t size
       AjPStr thys
    OUTPUT:
       RETVAL

ajint
ajCharPos (thys, ipos)
       char* thys
       ajint ipos
    OUTPUT:
       RETVAL

void
ajCharToLower (txt)
       char *txt

void
ajCharToUpper (txt)
       char *txt

AjBool
ajStrApp (pthis, src)
       AjPStr& pthis
       AjPStr src
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAppC (pthis, txt)
       AjPStr& pthis
       char *txt
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAppK (pthis, chr)
       AjPStr& pthis
       char chr
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAppKI (pthis, chr, number)
       AjPStr& pthis
       char chr
       ajint number
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAppSub (pthis, src, begin, end)
       AjPStr& pthis
       AjPStr src
       ajint begin
       ajint end
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAss (pthis, str)
       AjPStr& pthis
       AjPStr str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssC (pthis, txt)
       AjPStr& pthis
       char* txt
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssCI (pthis, txt, i)
       AjPStr& pthis
       char* txt
       size_t i
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssCL (pthis, txt, i)
       AjPStr& pthis
       char* txt
       size_t i
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssI (pthis, str, i)
       AjPStr& pthis
       AjPStr str
       size_t i
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssL (pthis, str, i)
       AjPStr& pthis
       AjPStr str
       size_t i
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssS (pthis, str)
       AjPStr& pthis
       AjPStr str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssSub (pthis, str, begin, end)
       AjPStr& pthis
       AjPStr str
       ajint begin
       ajint end
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrAssSubC (pthis, txt, begin, end)
       AjPStr& pthis
       char* txt
       ajint begin
       ajint end
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrBlock (pthis, blksize)
       AjPStr& pthis
       ajint blksize
    OUTPUT:
       RETVAL
       pthis

char*
ajStrBool (boule)
       AjBool boule
    OUTPUT:
       RETVAL

char
ajStrChar (thys, pos)
       AjPStr thys
       ajint pos
    OUTPUT:
       RETVAL

AjBool
ajStrCheck (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrChomp (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrChompC (pthis, delim)
       AjPStr& pthis
       char* delim
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrChompEnd (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrChop (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrClean (s)
       AjPStr& s
    OUTPUT:
       RETVAL
       s

AjBool
ajStrCleanWhite (s)
       AjPStr& s
    OUTPUT:
       RETVAL
       s

AjBool
ajStrClear (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

int
ajStrCmpC (thys, text)
       AjPStr thys
       char *text
    OUTPUT:
       RETVAL

int
ajStrCmpCase (str1, str2)
       AjPStr str1
       AjPStr str2
    OUTPUT:
       RETVAL

int
ajStrCmpCaseCC (str1, str2)
       char* str1
       char* str2
    OUTPUT:
       RETVAL

int
ajStrCmp (str1, str2)
       char * str1
       char * str2
    OUTPUT:
       RETVAL

int
ajStrCmpO (thys, anoth)
       AjPStr thys
       AjPStr anoth
    OUTPUT:
       RETVAL

int
ajStrCmpWild (thys, str)
       AjPStr thys
       AjPStr str
    OUTPUT:
       RETVAL

int
ajStrCmpWildC (thys, text)
       AjPStr thys
       char* text
    OUTPUT:
       RETVAL

int
ajStrCmpWildCC (str, text)
       char* str
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrConvert (pthis, oldc, newc)
       AjPStr& pthis
       AjPStr oldc
       AjPStr newc
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrConvertCC (pthis, oldc, newc)
       AjPStr& pthis
       char* oldc
       char* newc
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrCopy (pthis, str)
       AjPStr& pthis
       AjPStr str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrCopyC (pthis, str)
       AjPStr& pthis
       char* str
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrCountC (thys, str)
       AjPStr thys
       char* str
    OUTPUT:
       RETVAL

ajint
ajStrCountK (thys, ch)
       AjPStr thys
       char ch
    OUTPUT:
       RETVAL

AjBool
ajStrCut (pthis, begin, end)
       AjPStr& pthis
       ajint begin
       ajint end
    OUTPUT:
       RETVAL
       pthis

void
ajStrDegap (thys)
       AjPStr& thys
    OUTPUT:
       thys

void
ajStrDel (thys)
       AjPStr &thys
    OUTPUT:
       thys

AjBool
ajStrDelim (pthis, ptoken, delim)
       AjPStr& pthis
       AjPStrTok &ptoken
       char *delim
    OUTPUT:
       RETVAL
       pthis
       ptoken

AjBool
ajStrDelReuse (thys)
       AjPStr &thys
    OUTPUT:
       RETVAL
       thys

AjPStr
ajStrDup (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

void
ajStrExit ()

ajint
ajStrFind (thys, text)
       AjPStr thys
       AjPStr text
    OUTPUT:
       RETVAL

ajint
ajStrFindC (thys, txt)
       AjPStr thys
       char* txt
    OUTPUT:
       RETVAL

ajint
ajStrFindCase (thys, text)
       AjPStr thys
       AjPStr text
    OUTPUT:
       RETVAL

ajint
ajStrFindCaseC (thys, txt)
       AjPStr thys
       char* txt
    OUTPUT:
       RETVAL

void
ajStrFill (thys, count, fill)
       AjPStr& thys
       ajint count
       char fill
    OUTPUT:
       thys

void
ajStrFix (thys)
       AjPStr thys

void
ajStrFixI (thys, ilen)
       AjPStr thys
       ajint ilen

void
ajStrFixTestI (thys, ilen)
       AjPStr thys
       ajint ilen

AjBool
ajStrFromBool (pthis, boule)
       AjPStr &pthis
       AjBool boule
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrFromDouble (pthis, val, precision)
       AjPStr &pthis
       double val
       ajint precision
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrFromDoubleE (pthis, val, precision)
       AjPStr& pthis
       double val
       ajint precision
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrFromFloat (pthis, val, precision)
       AjPStr &pthis
       float val
       ajint precision
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrFromInt (pthis, val)
       AjPStr &pthis
       ajint val
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrFromLong (pthis, val)
       AjPStr &pthis
       ajlong val
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrInsert (pthis, pos, str)
       AjPStr& pthis
       ajint pos
       AjPStr str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrInsertC (pthis, pos, str)
       AjPStr& pthis
       ajint pos
       char* str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrIsAlnum (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsAlpha (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsBool (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsDouble (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsFloat (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsHex (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsInt (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsLong (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsSpace (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsWild (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrIsWord (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjIStr
ajStrIter (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjIStr
ajStrIterBack (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjIStr
ajStrIterBackNext (iter)
       AjIStr iter
    OUTPUT:
       RETVAL

void
ajStrIterFree (iter)
       AjIStr &iter
    OUTPUT:
       iter

AjIStr
ajStrIterNext (iter)
       AjIStr iter
    OUTPUT:
       RETVAL

AjBool
ajStrJoin (pthis, pos1, addbit, pos2)
       AjPStr& pthis
       ajint pos1
       AjPStr addbit
       ajint pos2
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrJoinC (pthis, pos1, addbit, pos2)
       AjPStr& pthis
       ajint pos1
       char* addbit
       ajint pos2
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrLen (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrMask (str, begin, end, maskchar)
       AjPStr& str
       ajint begin
       ajint end
       char maskchar
    OUTPUT:
       RETVAL
       str

AjBool
ajStrMatch (thys, str)
       AjPStr thys
       AjPStr str
    OUTPUT:
       RETVAL

AjBool
ajStrMatchC (thys, txt)
       AjPStr thys
       char* txt
    OUTPUT:
       RETVAL

AjBool
ajStrMatchCase (thys, str)
       AjPStr thys
       AjPStr str
    OUTPUT:
       RETVAL

AjBool
ajStrMatchCaseC (thys, text)
       AjPStr thys
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchCaseCC (thys, text)
       char* thys
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchCC (thys, text)
       char* thys
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWild (thys, wild)
       AjPStr thys
       AjPStr wild
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWildC (thys, text)
       AjPStr thys
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWildCC (str, text)
       char* str
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWildCO (str, wild)
       char* str
       AjPStr wild
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWord (str, text)
       AjPStr str
       AjPStr text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWordC (str, text)
       AjPStr str
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMatchWordCC (str, text)
       char* str
       char* text
    OUTPUT:
       RETVAL

AjBool
ajStrMod (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrModL (pthis, size)
       AjPStr& pthis
       size_t size
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrNCmpC (thys, text, n)
       AjPStr thys
       char *text
       ajint n
    OUTPUT:
       RETVAL

ajint
ajStrNCmpCaseCC (str1, str2, len)
       char* str1
       char* str2
       ajint len
    OUTPUT:
       RETVAL

ajint
ajStrNCmpO (thys, anoth, n)
       AjPStr thys
       AjPStr anoth
       ajint n
    OUTPUT:
       RETVAL

AjPStr
ajStrNew ()
    OUTPUT:
       RETVAL

AjPStr
ajStrNewC (txt)
       char *txt
    OUTPUT:
       RETVAL

AjPStr
ajStrNewCIL (txt, len, size)
       char *txt
       ajint len
       size_t size
    OUTPUT:
       RETVAL

AjPStr
ajStrNewCL (txt, size)
       char *txt
       size_t size
    OUTPUT:
       RETVAL

AjPStr
ajStrNewL (size)
       size_t size
    OUTPUT:
       RETVAL

AjPStr
ajStrNewS (str)
       AjPStr str
    OUTPUT:
       RETVAL

ajint
ajStrPos (thys, ipos)
       AjPStr thys
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajStrPosI (thys, imin, ipos)
       AjPStr thys
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

ajint
ajStrPosII (ilen, imin, ipos)
       ajint ilen
       ajint imin
       ajint ipos
    OUTPUT:
       RETVAL

AjBool
ajStrPrefix (thys, pref)
       AjPStr thys
       AjPStr pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixC (thys, pref)
       AjPStr thys
       char* pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCC (str, pref)
       char *str
       char* pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCase (thys, pref)
       AjPStr thys
       AjPStr pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCaseC (thys, pref)
       AjPStr thys
       char* pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCaseCC (str, pref)
       char *str
       char* pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCaseCO (thys, pref)
       char* thys
       AjPStr pref
    OUTPUT:
       RETVAL

AjBool
ajStrPrefixCO (str, thys)
       char *str
       AjPStr thys
    OUTPUT:
       RETVAL

void
ajStrQuote (s)
       AjPStr &s
    OUTPUT:
       s

void
ajStrQuoteStrip (s)
       AjPStr &s
    OUTPUT:
       s

void
ajStrRandom (s)
       AjPStr &s
    OUTPUT:
       s

AjBool
ajStrReplace (pthis, pos1, overwrite, len)
       AjPStr& pthis
       ajint pos1
       AjPStr overwrite
       ajint len
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrReplaceC (pthis, pos1, overwrite, len)
       AjPStr& pthis
       ajint pos1
       char* overwrite
       ajint len
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrReplaceK (pthis, pos1, overwrite, len)
       AjPStr& pthis
       ajint pos1
       char overwrite
       ajint len
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrRef (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

void
ajStrRemoveHtml (thys)
       AjPStr &thys
    OUTPUT:
       thys

void
ajStrRemoveNewline (thys)
       AjPStr &thys
    OUTPUT:
       thys

AjBool
ajStrRev (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrRFindC (thys, text)
       AjPStr thys
       char *text
    OUTPUT:
       RETVAL

ajint
ajStrRoom (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrSet (pthis, str)
       AjPStr& pthis
       AjPStr str
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrSetC (pthis, str)
       AjPStr& pthis
       char* str
    OUTPUT:
       RETVAL
       pthis

ajint
ajStrSize (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

void
ajStrStat (title)
       char* title

char*
ajStrStr (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjBool
ajStrSub (pthis, begin, len)
       AjPStr& pthis
       ajint begin
       ajint len
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrSubstitute (pthis, replace, putin)
       AjPStr& pthis
       AjPStr replace
       AjPStr putin
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrSubstituteCC (pthis, replace, putin)
       AjPStr& pthis
       char* replace
       char* putin
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrSubstituteKK (pthis, replace, putin)
       AjPStr& pthis
       char replace
       char putin
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrSuffix (thys, suff)
       AjPStr thys
       AjPStr suff
    OUTPUT:
       RETVAL

AjBool
ajStrSuffixC (thys, suff)
       AjPStr thys
       char* suff
    OUTPUT:
       RETVAL

AjBool
ajStrSuffixCC (str, suff)
       char *str
       char* suff
    OUTPUT:
       RETVAL

AjBool
ajStrSuffixCO (str, suff)
       char *str
       AjPStr suff
    OUTPUT:
       RETVAL

AjBool
ajStrToBool (thys, result)
       AjPStr thys
       AjBool& result
    OUTPUT:
       RETVAL
       result

AjBool
ajStrToDouble (thys, result)
       AjPStr thys
       double& result
    OUTPUT:
       RETVAL
       result

AjBool
ajStrToFloat (thys, result)
       AjPStr thys
       float& result
    OUTPUT:
       RETVAL
       result

AjBool
ajStrToHex (thys, result)
       AjPStr thys
       ajint& result
    OUTPUT:
       RETVAL
       result

AjBool
ajStrToInt (thys, result)
       AjPStr thys
       ajint& result
    OUTPUT:
       RETVAL
       result

AjPStr
ajStrTok (thys)
       AjPStr thys
    OUTPUT:
       RETVAL

AjPStr
ajStrTokC (thys, delim)
       AjPStr thys
       char* delim
    OUTPUT:
       RETVAL

AjBool
ajStrToken (pthis, ptoken, delim)
       AjPStr& pthis
       AjPStrTok &ptoken
       char *delim
    OUTPUT:
       RETVAL
       pthis
       ptoken

AjBool
ajStrTokenAss (ptok, thys, delim)
       AjPStrTok &ptok
       AjPStr thys
       char *delim
    OUTPUT:
       RETVAL
       ptok

void
ajStrTokenClear (token)
       AjPStrTok &token
    OUTPUT:
       token

ajint
ajStrTokenCount (line, delim)
       AjPStr &line
       char *delim
    OUTPUT:
       RETVAL
       line

ajint
ajStrTokenCountR (line, delim)
       AjPStr& line
       char *delim
    OUTPUT:
       RETVAL
       line

AjPStrTok
ajStrTokenInit (thys, delim)
       AjPStr thys
       char *delim
    OUTPUT:
       RETVAL

void
ajStrTokenReset (ptok)
       AjPStrTok& ptok
    OUTPUT:
       ptok

AjBool
ajStrTokenRest (pthis, ptoken)
       AjPStr& pthis
       AjPStrTok& ptoken
    OUTPUT:
       RETVAL
       pthis
       ptoken

void
ajStrTokenTrace (tok)
       AjPStrTok tok

AjBool
ajStrToLong (thys, result)
       AjPStr thys
       ajlong& result
    OUTPUT:
       RETVAL
       result

AjBool
ajStrToLower (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrToUpper (pthis)
       AjPStr& pthis
    OUTPUT:
       RETVAL
       pthis

void
ajStrTrace (thys)
       AjPStr thys

void
ajStrTraceChars (thys)
       AjPStr thys

void
ajStrTraceT (thys, title)
       AjPStr thys
       char* title

AjBool
ajStrTrim (pthis, num)
       AjPStr& pthis
       ajint num
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrTrimC (pthis, chars)
       AjPStr& pthis
       char* chars
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrTrimEndC (pthis, chars)
       AjPStr& pthis
       char* chars
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrTruncate (pthis, pos)
       AjPStr& pthis
       ajint pos
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrWhole (thys, begin, end)
       AjPStr thys
       ajint begin
       ajint end
    OUTPUT:
       RETVAL

AjBool
ajStrWildPrefix (str)
       AjPStr& str
    OUTPUT:
       RETVAL
       str

AjBool
ajStrWrap (pthis, width)
       AjPStr& pthis
       ajint width
    OUTPUT:
       RETVAL
       pthis

AjBool
ajStrWrapLeft (pthis, width, left)
       AjPStr& pthis
       ajint width
       ajint left
    OUTPUT:
       RETVAL
       pthis

char*
ajStrYN (boule)
       AjBool boule
    OUTPUT:
       RETVAL



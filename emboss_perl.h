/* ***************************************************
   This header file was created 
     by scripts/create_cpp_undefs_redefs.pl 
     on Thu Jun 19 00:16:22 2003 GMT 

   This is a wrapper arround #include "emboss.h"
   ***************************************************
*/

/* undef Perl #define(s) colliding with Emboss */

#ifdef ELSE
#define ELSE_BACKUP_BIO_EMBOSS ELSE
#undef ELSE
#endif

#ifdef WORD
#define WORD_BACKUP_BIO_EMBOSS WORD
#undef WORD
#endif

#ifdef apply
#define apply_BACKUP_BIO_EMBOSS apply
#undef apply
#endif


#ifdef regexp
#define regexp_BACKUP_BIO_EMBOSS regexp
#undef regexp
#endif


/* redefine Emboss names, because of collisions with Perl names */

#define regexp BIO_EMBOSS_regexp


/* include Emboss headers */

#include "emboss.h"


/* undefine redefinitions */

#undef regexp


/* undo undefs */

#ifdef regexp_BACKUP_BIO_EMBOSS

#ifdef regexp
#undef regexp
#endif

#define regexp regexp_BACKUP_BIO_EMBOSS
/* #undef regexp_BACKUP_BIO_EMBOSS */
#endif

#ifdef ELSE_BACKUP_BIO_EMBOSS

#ifdef ELSE
#undef ELSE
#endif

#define ELSE ELSE_BACKUP_BIO_EMBOSS
/* #undef ELSE_BACKUP_BIO_EMBOSS */
#endif

#ifdef WORD_BACKUP_BIO_EMBOSS

#ifdef WORD
#undef WORD
#endif

#define WORD WORD_BACKUP_BIO_EMBOSS
/* #undef WORD_BACKUP_BIO_EMBOSS */
#endif

#ifdef apply_BACKUP_BIO_EMBOSS

#ifdef apply
#undef apply
#endif

#define apply apply_BACKUP_BIO_EMBOSS
/* #undef apply_BACKUP_BIO_EMBOSS */
#endif



/* ppport.h -- Perl/Pollution/Portability Version 2.0002 
 *
 * Automatically Created by Devel::PPPort on Sat Jan  4 16:59:35 2003 
 *
 * Do NOT edit this file directly! -- Edit PPPort.pm instead.
 *
 * Version 2.x, Copyright (C) 2001, Paul Marquess.
 * Version 1.x, Copyright (C) 1999, Kenneth Albanowski.
 * This code may be used and distributed under the same license as any
 * version of Perl.
 * 
 * This version of ppport.h is designed to support operation with Perl
 * installations back to 5.004, and has been tested up to 5.8.0.
 *
 * If this version of ppport.h is failing during the compilation of this
 * module, please check if a newer version of Devel::PPPort is available
 * on CPAN before sending a bug report.
 *
 * If you are using the latest version of Devel::PPPort and it is failing
 * during compilation of this module, please send a report to perlbug@perl.com
 *
 * Include all following information:
 *
 *  1. The complete output from running "perl -V"
 *
 *  2. This file.
 *
 *  3. The name & version of the module you were trying to build.
 *
 *  4. A full log of the build that failed.
 *
 *  5. Any other information that you think could be relevant.
 *
 *
 * For the latest version of this code, please retreive the Devel::PPPort
 * module from CPAN.
 * 
 */

/*
 * In order for a Perl extension module to be as portable as possible
 * across differing versions of Perl itself, certain steps need to be taken.
 * Including this header is the first major one, then using dTHR is all the
 * appropriate places and using a PL_ prefix to refer to global Perl
 * variables is the second.
 *
 */


/* If you use one of a few functions that were not present in earlier
 * versions of Perl, please add a define before the inclusion of ppport.h
 * for a static include, or use the GLOBAL request in a single module to
 * produce a global definition that can be referenced from the other
 * modules.
 * 
 * Function:            Static define:           Extern define:
 * newCONSTSUB()        NEED_newCONSTSUB         NEED_newCONSTSUB_GLOBAL
 *
 */
 

/* To verify whether ppport.h is needed for your module, and whether any
 * special defines should be used, ppport.h can be run through Perl to check
 * your source code. Simply say:
 * 
 * 	perl -x ppport.h *.c *.h *.xs foo/bar*.c [etc]
 * 
 * The result will be a list of patches suggesting changes that should at
 * least be acceptable, if not necessarily the most efficient solution, or a
 * fix for all possible problems. It won't catch where dTHR is needed, and
 * doesn't attempt to account for global macro or function definitions,
 * nested includes, typemaps, etc.
 * 
 * In order to test for the need of dTHR, please try your module under a
 * recent version of Perl that has threading compiled-in.
 *
 */ 


/*
#!/usr/bin/perl
@ARGV = ("*.xs") if !@ARGV;
%badmacros = %funcs = %macros = (); $replace = 0;
foreach (<DATA>) {
	$funcs{$1} = 1 if /Provide:\s+(\S+)/;
	$macros{$1} = 1 if /^#\s*define\s+([a-zA-Z0-9_]+)/;
	$replace = $1 if /Replace:\s+(\d+)/;
	$badmacros{$2}=$1 if $replace and /^#\s*define\s+([a-zA-Z0-9_]+).*?\s+([a-zA-Z0-9_]+)/;
	$badmacros{$1}=$2 if /Replace (\S+) with (\S+)/;
}
foreach $filename (map(glob($_),@ARGV)) {
	unless (open(IN, "<$filename")) {
		warn "Unable to read from $file: $!\n";
		next;
	}
	print "Scanning $filename...\n";
	$c = ""; while (<IN>) { $c .= $_; } close(IN);
	$need_include = 0; %add_func = (); $changes = 0;
	$has_include = ($c =~ /#.*include.*ppport/m);

	foreach $func (keys %funcs) {
		if ($c =~ /#.*define.*\bNEED_$func(_GLOBAL)?\b/m) {
			if ($c !~ /\b$func\b/m) {
				print "If $func isn't needed, you don't need to request it.\n" if
				$changes += ($c =~ s/^.*#.*define.*\bNEED_$func\b.*\n//m);
			} else {
				print "Uses $func\n";
				$need_include = 1;
			}
		} else {
			if ($c =~ /\b$func\b/m) {
				$add_func{$func} =1 ;
				print "Uses $func\n";
				$need_include = 1;
			}
		}
	}

	if (not $need_include) {
		foreach $macro (keys %macros) {
			if ($c =~ /\b$macro\b/m) {
				print "Uses $macro\n";
				$need_include = 1;
			}
		}
	}

	foreach $badmacro (keys %badmacros) {
		if ($c =~ /\b$badmacro\b/m) {
			$changes += ($c =~ s/\b$badmacro\b/$badmacros{$badmacro}/gm);
			print "Uses $badmacros{$badmacro} (instead of $badmacro)\n";
			$need_include = 1;
		}
	}
	
	if (scalar(keys %add_func) or $need_include != $has_include) {
		if (!$has_include) {
			$inc = join('',map("#define NEED_$_\n", sort keys %add_func)).
			       "#include \"ppport.h\"\n";
			$c = "$inc$c" unless $c =~ s/#.*include.*XSUB.*\n/$&$inc/m;
		} elsif (keys %add_func) {
			$inc = join('',map("#define NEED_$_\n", sort keys %add_func));
			$c = "$inc$c" unless $c =~ s/^.*#.*include.*ppport.*$/$inc$&/m;
		}
		if (!$need_include) {
			print "Doesn't seem to need ppport.h.\n";
			$c =~ s/^.*#.*include.*ppport.*\n//m;
		}
		$changes++;
	}
	
	if ($changes) {
		open(OUT,">/tmp/ppport.h.$$");
		print OUT $c;
		close(OUT);
		open(DIFF, "diff -u $filename /tmp/ppport.h.$$|");
		while (<DIFF>) { s!/tmp/ppport\.h\.$$!$filename.patched!; print STDOUT; }
		close(DIFF);
		unlink("/tmp/ppport.h.$$");
	} else {
		print "Looks OK\n";
	}
}
__DATA__
*/

#ifndef _P_P_PORTABILITY_H_
#define _P_P_PORTABILITY_H_

#ifndef PERL_REVISION
#   ifndef __PATCHLEVEL_H_INCLUDED__
#       include "patchlevel.h"
#   endif
#   ifndef PERL_REVISION
#	define PERL_REVISION	(5)
        /* Replace: 1 */
#       define PERL_VERSION	PATCHLEVEL
#       define PERL_SUBVERSION	SUBVERSION
        /* Replace PERL_PATCHLEVEL with PERL_VERSION */
        /* Replace: 0 */
#   endif
#endif

#define PERL_BCDVERSION ((PERL_REVISION * 0x1000000L) + (PERL_VERSION * 0x1000L) + PERL_SUBVERSION)

/* It is very unlikely that anyone will try to use this with Perl 6 
   (or greater), but who knows.
 */
#if PERL_REVISION != 5
#	error ppport.h only works with Perl version 5
#endif /* PERL_REVISION != 5 */

#ifndef ERRSV
#	define ERRSV perl_get_sv("@",FALSE)
#endif

#if (PERL_VERSION < 4) || ((PERL_VERSION == 4) && (PERL_SUBVERSION <= 5))
/* Replace: 1 */
#	define PL_Sv		Sv
#	define PL_compiling	compiling
#	define PL_copline	copline
#	define PL_curcop	curcop
#	define PL_curstash	curstash
#	define PL_defgv		defgv
#	define PL_dirty		dirty
#	define PL_dowarn	dowarn
#	define PL_hints		hints
#	define PL_na		na
#	define PL_perldb	perldb
#	define PL_rsfp_filters	rsfp_filters
#	define PL_rsfpv		rsfp
#	define PL_stdingv	stdingv
#	define PL_sv_no		sv_no
#	define PL_sv_undef	sv_undef
#	define PL_sv_yes	sv_yes
/* Replace: 0 */
#endif

#ifdef HASATTRIBUTE
#  if defined(__GNUC__) && defined(__cplusplus)
#    define PERL_UNUSED_DECL
#  else
#    define PERL_UNUSED_DECL __attribute__((unused))
#  endif
#else
#  define PERL_UNUSED_DECL
#endif

#ifndef dNOOP
#  define NOOP (void)0
#  define dNOOP extern int Perl___notused PERL_UNUSED_DECL
#endif

#ifndef dTHR
#  define dTHR          dNOOP
#endif

#ifndef dTHX
#  define dTHX          dNOOP
#  define dTHXa(x)      dNOOP
#  define dTHXoa(x)     dNOOP
#endif

#ifndef pTHX
#    define pTHX	void
#    define pTHX_
#    define aTHX
#    define aTHX_
#endif         

#ifndef UVSIZE
#   define UVSIZE IVSIZE
#endif

#ifndef NVTYPE
#   if defined(USE_LONG_DOUBLE) && defined(HAS_LONG_DOUBLE)
#       define NVTYPE long double
#   else
#       define NVTYPE double
#   endif
typedef NVTYPE NV;
#endif

#ifndef INT2PTR

#if (IVSIZE == PTRSIZE) && (UVSIZE == PTRSIZE)
#  define PTRV                  UV
#  define INT2PTR(any,d)        (any)(d)
#else
#  if PTRSIZE == LONGSIZE
#    define PTRV                unsigned long
#  else
#    define PTRV                unsigned
#  endif
#  define INT2PTR(any,d)        (any)(PTRV)(d)
#endif
#define NUM2PTR(any,d)  (any)(PTRV)(d)
#define PTR2IV(p)       INT2PTR(IV,p)
#define PTR2UV(p)       INT2PTR(UV,p)
#define PTR2NV(p)       NUM2PTR(NV,p)
#if PTRSIZE == LONGSIZE
#  define PTR2ul(p)     (unsigned long)(p)
#else
#  define PTR2ul(p)     INT2PTR(unsigned long,p)        
#endif

#endif /* !INT2PTR */

#ifndef boolSV
#	define boolSV(b) ((b) ? &PL_sv_yes : &PL_sv_no)
#endif

#ifndef gv_stashpvn
#	define gv_stashpvn(str,len,flags) gv_stashpv(str,flags)
#endif

#ifndef newSVpvn
#	define newSVpvn(data,len) ((len) ? newSVpv ((data), (len)) : newSVpv ("", 0))
#endif

#ifndef newRV_inc
/* Replace: 1 */
#	define newRV_inc(sv) newRV(sv)
/* Replace: 0 */
#endif

/* DEFSV appears first in 5.004_56 */
#ifndef DEFSV
#  define DEFSV	GvSV(PL_defgv)
#endif

#ifndef SAVE_DEFSV
#    define SAVE_DEFSV SAVESPTR(GvSV(PL_defgv))
#endif

#ifndef newRV_noinc
#  ifdef __GNUC__
#    define newRV_noinc(sv)               \
      ({                                  \
          SV *nsv = (SV*)newRV(sv);       \
          SvREFCNT_dec(sv);               \
          nsv;                            \
      })
#  else
#    if defined(USE_THREADS)
static SV * newRV_noinc (SV * sv)
{
          SV *nsv = (SV*)newRV(sv);       
          SvREFCNT_dec(sv);               
          return nsv;                     
}
#    else
#      define newRV_noinc(sv)    \
        (PL_Sv=(SV*)newRV(sv), SvREFCNT_dec(sv), (SV*)PL_Sv)
#    endif
#  endif
#endif

/* Provide: newCONSTSUB */

/* newCONSTSUB from IO.xs is in the core starting with 5.004_63 */
#if (PERL_VERSION < 4) || ((PERL_VERSION == 4) && (PERL_SUBVERSION < 63))

#if defined(NEED_newCONSTSUB)
static
#else
extern void newCONSTSUB(HV * stash, char * name, SV *sv);
#endif

#if defined(NEED_newCONSTSUB) || defined(NEED_newCONSTSUB_GLOBAL)
void
newCONSTSUB(stash,name,sv)
HV *stash;
char *name;
SV *sv;
{
	U32 oldhints = PL_hints;
	HV *old_cop_stash = PL_curcop->cop_stash;
	HV *old_curstash = PL_curstash;
	line_t oldline = PL_curcop->cop_line;
	PL_curcop->cop_line = PL_copline;

	PL_hints &= ~HINT_BLOCK_SCOPE;
	if (stash)
		PL_curstash = PL_curcop->cop_stash = stash;

	newSUB(

#if (PERL_VERSION < 3) || ((PERL_VERSION == 3) && (PERL_SUBVERSION < 22))
     /* before 5.003_22 */
		start_subparse(),
#else
#  if (PERL_VERSION == 3) && (PERL_SUBVERSION == 22)
     /* 5.003_22 */
     		start_subparse(0),
#  else
     /* 5.003_23  onwards */
     		start_subparse(FALSE, 0),
#  endif
#endif

		newSVOP(OP_CONST, 0, newSVpv(name,0)),
		newSVOP(OP_CONST, 0, &PL_sv_no),   /* SvPV(&PL_sv_no) == "" -- GMB */
		newSTATEOP(0, Nullch, newSVOP(OP_CONST, 0, sv))
	);

	PL_hints = oldhints;
	PL_curcop->cop_stash = old_cop_stash;
	PL_curstash = old_curstash;
	PL_curcop->cop_line = oldline;
}
#endif

#endif /* newCONSTSUB */

#ifndef START_MY_CXT

/*
 * Boilerplate macros for initializing and accessing interpreter-local
 * data from C.  All statics in extensions should be reworked to use
 * this, if you want to make the extension thread-safe.  See ext/re/re.xs
 * for an example of the use of these macros.
 *
 * Code that uses these macros is responsible for the following:
 * 1. #define MY_CXT_KEY to a unique string, e.g. "DynaLoader_guts"
 * 2. Declare a typedef named my_cxt_t that is a structure that contains
 *    all the data that needs to be interpreter-local.
 * 3. Use the START_MY_CXT macro after the declaration of my_cxt_t.
 * 4. Use the MY_CXT_INIT macro such that it is called exactly once
 *    (typically put in the BOOT: section).
 * 5. Use the members of the my_cxt_t structure everywhere as
 *    MY_CXT.member.
 * 6. Use the dMY_CXT macro (a declaration) in all the functions that
 *    access MY_CXT.
 */

#if defined(MULTIPLICITY) || defined(PERL_OBJECT) || \
    defined(PERL_CAPI)    || defined(PERL_IMPLICIT_CONTEXT)

/* This must appear in all extensions that define a my_cxt_t structure,
 * right after the definition (i.e. at file scope).  The non-threads
 * case below uses it to declare the data as static. */
#define START_MY_CXT

#if (PERL_VERSION < 4 || (PERL_VERSION == 4 && PERL_SUBVERSION < 68 ))
/* Fetches the SV that keeps the per-interpreter data. */
#define dMY_CXT_SV \
	SV *my_cxt_sv = perl_get_sv(MY_CXT_KEY, FALSE)
#else /* >= perl5.004_68 */
#define dMY_CXT_SV \
	SV *my_cxt_sv = *hv_fetch(PL_modglobal, MY_CXT_KEY,		\
				  sizeof(MY_CXT_KEY)-1, TRUE)
#endif /* < perl5.004_68 */

/* This declaration should be used within all functions that use the
 * interpreter-local data. */
#define dMY_CXT	\
	dMY_CXT_SV;							\
	my_cxt_t *my_cxtp = INT2PTR(my_cxt_t*,SvUV(my_cxt_sv))

/* Creates and zeroes the per-interpreter data.
 * (We allocate my_cxtp in a Perl SV so that it will be released when
 * the interpreter goes away.) */
#define MY_CXT_INIT \
	dMY_CXT_SV;							\
	/* newSV() allocates one more than needed */			\
	my_cxt_t *my_cxtp = (my_cxt_t*)SvPVX(newSV(sizeof(my_cxt_t)-1));\
	Zero(my_cxtp, 1, my_cxt_t);					\
	sv_setuv(my_cxt_sv, PTR2UV(my_cxtp))

/* This macro must be used to access members of the my_cxt_t structure.
 * e.g. MYCXT.some_data */
#define MY_CXT		(*my_cxtp)

/* Judicious use of these macros can reduce the number of times dMY_CXT
 * is used.  Use is similar to pTHX, aTHX etc. */
#define pMY_CXT		my_cxt_t *my_cxtp
#define pMY_CXT_	pMY_CXT,
#define _pMY_CXT	,pMY_CXT
#define aMY_CXT		my_cxtp
#define aMY_CXT_	aMY_CXT,
#define _aMY_CXT	,aMY_CXT

#else /* single interpreter */


#define START_MY_CXT	static my_cxt_t my_cxt;
#define dMY_CXT_SV	dNOOP
#define dMY_CXT		dNOOP
#define MY_CXT_INIT	NOOP
#define MY_CXT		my_cxt

#define pMY_CXT		void
#define pMY_CXT_
#define _pMY_CXT
#define aMY_CXT
#define aMY_CXT_
#define _aMY_CXT

#endif 

#endif /* START_MY_CXT */

#ifndef IVdf
#  if IVSIZE == LONGSIZE
#       define	IVdf		"ld"
#       define	UVuf		"lu"
#       define	UVof		"lo"
#       define	UVxf		"lx"
#       define	UVXf		"lX"
#   else
#       if IVSIZE == INTSIZE
#           define	IVdf	"d"
#           define	UVuf	"u"
#           define	UVof	"o"
#           define	UVxf	"x"
#           define	UVXf	"X"
#       endif
#   endif
#endif

#ifndef NVef
#   if defined(USE_LONG_DOUBLE) && defined(HAS_LONG_DOUBLE) && \
	defined(PERL_PRIfldbl) /* Not very likely, but let's try anyway. */ 
#       define NVef		PERL_PRIeldbl
#       define NVff		PERL_PRIfldbl
#       define NVgf		PERL_PRIgldbl
#   else
#       define NVef		"e"
#       define NVff		"f"
#       define NVgf		"g"
#   endif
#endif

#ifndef AvFILLp			/* Older perls (<=5.003) lack AvFILLp */
#   define AvFILLp AvFILL
#endif

#ifdef SvPVbyte
#   if PERL_REVISION == 5 && PERL_VERSION < 7
       /* SvPVbyte does not work in perl-5.6.1, borrowed version for 5.7.3 */
#       undef SvPVbyte
#       define SvPVbyte(sv, lp) \
          ((SvFLAGS(sv) & (SVf_POK|SVf_UTF8)) == (SVf_POK) \
           ? ((lp = SvCUR(sv)), SvPVX(sv)) : my_sv_2pvbyte(aTHX_ sv, &lp))
       static char *
       my_sv_2pvbyte(pTHX_ register SV *sv, STRLEN *lp)
       {   
           sv_utf8_downgrade(sv,0);
           return SvPV(sv,*lp);
       }
#   endif
#else
#   define SvPVbyte SvPV
#endif

#endif /* _P_P_PORTABILITY_H_ */

/* End of File ppport.h */

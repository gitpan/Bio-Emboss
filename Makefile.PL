use 5.000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

#
# --- The following lines need to be adjusted !!!!!
#

# --- installation path of EMBOSS (--PREFIX during EMBOSS' configure)
#        (if you did no "make install" of EMBOSS,
#         you must adjust $EMB_LIBS below manually)

$EMB_ROOT     = "/usr/local";


# --- path to EMBOSS' sources (for the *.h files)

$EMB_SRC_ROOT = "/usr/local/src/EMBOSS-2.7.1";


# --- external libraries required by EMBOSS
#     XLIB and LIBS from the EMBOSS Makefile 
#     (<emboss-build-dir>/emboss/Makefile)

$EMB_EXT_LIBS = "";
#$EMB_EXT_LIBS = "-L/usr/X11R6/lib -lX11 -lm  -lgd -lpng -lz";
#$EMB_EXT_LIBS = "-L/usr/openwin/lib -lX11 -lsocket -lm -lnsl -lgd -lpng -lz";


# --- DEFS from the EMBOSS Makefile; maybe not needed

$EMB_DEFS = "";
# $EMB_DEFS = " -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" .....";


# --- Change the following lines only, if EMBOSS libraries
#     or EMBOSS includes weren't found.
#
#     $EMB_LIBS: The nucleus, ajaxg, ajax and plplot libraries are taken
#                from the lib/ subdirectory in $EMB_ROOT by default.
#     $EMB_INC:  The *.h files are taken from the subdirectories
#                nucleus, ajax and plplot in $EMB_SRC_ROOT by default.
#
@emb_libs = qw(nucleus ajax ajaxg plplot);

$EMB_LIBS = "-L$EMB_ROOT/lib " .
            join (" ", map { "-l$_" } @emb_libs) .
           " " . $EMB_EXT_LIBS;
$EMB_INC =  join " ", map { "-I$EMB_SRC_ROOT/$_" } @emb_libs;

# --- look for EMBOSS in $EMB_ROOT and $EMB_SRC_ROOT
#     (disable if you change $EMB_LIBS or $EMB_INC manually)
$check_installation = 1;


# --- trying to get the EMBOSS version from the application 'embossversion'
#     (if this doesn't work, set $EMB_VERSION here to e.g. "2.5.1"
$embossversion = "$EMB_ROOT/bin/embossversion";
$EMB_VERSION = `$embossversion -stdout -auto`; # e.g. 2.5.1


# --- solving name conflicts Perl <-> Emboss:

# --- some Perl defines need to be undefined for EMBOSS
@emboss_undefs = qw(ELSE WORD apply);
# --- some EMBOSS terms need to be redefined, because they are
#     already used by Perl
@emboss_redefs = qw(regexp OP_NOT OP_REF OP_REVERSE);



#
# --- END of adjustments
#


# --- list of modules in this package
@modules_lib = qw(
  Emboss_acd 
  Emboss_feat
  Emboss_file
  Emboss_graph
  Emboss_hist
  Emboss_list
  Emboss_math
  Emboss_mem
  Emboss_nam
  Emboss_range
  Emboss_report
  Emboss_seq
  Emboss_seqabi
  Emboss_seqdb
  Emboss_seqread
  Emboss_seqtype
  Emboss_seqwrite
  Emboss_str
  Emboss_translate
  Emboss_util
  Emboss_xyz

  Emboss_embgroup
);

# --- library modules plus main module
@modules = ("Emboss", @modules_lib);

# --- create %XS hash (input .xs files)
#     create @OBJECTS (.o files for the library)
foreach $mod (@modules) {
    $XS{"$mod.xs"} = "$mod.c";
    push (@OBJECTS, $mod . '$(OBJ_EXT)');
}
$OBJECT = join (" ", @OBJECTS);

# --- list of .xs files in @modules_lib
$xs_modules = join(" \\\n   ", map { "$_.xs"} @modules_lib);

# --- output of scripts/get_boot_for_modules.pl
#     included by Emboss.xs
$emboss_boot = "emboss-boot-xs.inc emboss-boot-c.inc";

# --- stripping unused boots
$strip = join "\n", map { "\tstrip -N boot_Bio__$_ $_\$(OBJ_EXT)"} @modules_lib;


# --- add -DEMBOSS_VERSION_1=... to $EMB_DEFS
#     (major/minor/... version numbers)
chomp ($EMB_VERSION);

$config_header_file = "bio_emboss_config.h";
&write_config_h ($EMB_VERSION, $config_header_file);

if ($EMB_VERSION) {
    print "Using EMBOSS version $EMB_VERSION\n";
} else {
    warn ("warning: **** \$EMB_VERSION not set in $0\n");
}


# --- some Perl defines need to be undefined for EMBOSS
$emboss_undefs = join (" \\\n  --undef ", "", @emboss_undefs);
# --- some EMBOSS termes need to be redefined, because they are
#     already used by Perl
$emboss_redefs = join (" \\\n  --redef ", "", @emboss_redefs);



WriteMakefile(
    'NAME'		=> 'Bio::Emboss',
    'VERSION_FROM'	=> 'Emboss.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (
       # ABSTRACT_FROM => 'Emboss.pm', # retrieve abstract from module
       AUTHOR     => 'Peter Ernst <P.Ernst@dkfz-heidelberg.de>') : ()),

    'XS'                => \%XS,    # all the modules
    'OBJECT'            => $OBJECT, # all the modules

    'LIBS'		=> [$EMB_LIBS], # e.g., '-lm'

    'DEFINE'		=> $EMB_DEFS, # e.g., '-DHAVE_SOMETHING'

      # -I- inhibits the use of the current file directory as the
      # first search directory for "#include "file"" (search ./include
      # always before $EMB_INC)
    'INC'		=> "-I. $EMB_INC", 

    'clean'             => { FILES => $config_header_file },
);

if  (eval {require ExtUtils::Constant; 1}) {
  # If you edit these definitions to change the constants used by this module,
  # you will need to use the generated const-c.inc and const-xs.inc
  # files to replace their "fallback" counterparts before distributing your
  # changes.
  my @names = ({name => EMBOSS_VERSION,
		type => PV},
	       {name => AJM_E,
		type => NV},
	       {name => AJM_PI,
		type => NV},
	       );
  ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Bio::Emboss',
                                     NAMES        => \@names,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'const-c.inc',
                                     XS_FILE      => 'const-xs.inc',
                                  );

}
else {
    if  ((eval {require File::Copy; import File::Copy; 1}) and
         (eval {require File::Spec; import File::Spec; 1}) ){
	my $file;
	foreach $file ('const-c.inc', 'const-xs.inc') {
	    my $fallback = File::Spec->catfile('fallback', $file);
	    copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
	}
    } else {
	my $file;
	foreach $file ('const-c.inc', 'const-xs.inc') {
	    my $fallback = "fallback/$file";
	    system ("cp", $fallback, $file) and die "Can't copy $fallback to $file: $!";
	}
    }
}

# --- check adjustments
#     enable if you have problems while building
if ($check_installation) {
    my ($lib, $dmsg);
    foreach $lib (map { "$EMB_ROOT/lib/lib$_" } @emb_libs) {
	next if -r "$lib.so" or -r "$lib.a";
	$dmsg .= "couldn't find '$lib' in \$EMB_ROOT ($EMB_ROOT)\n";
    }

    my $incfile = $EMB_SRC_ROOT . "/nucleus/emboss.h";
    unless (-r $incfile ) {
	$dmsg .= "couldn't find '$incfile' in \$EMB_SRC_ROOT ($EMB_SRC_ROOT)\n";
    }

    if ($dmsg) {
	warn ("\n" . $dmsg .
	      "\n***\n*** This module might not build properly\n" .
	      "*** Check $0\n***\n\n");
    }
}

exit(0);

#
# --- end of main
#


# --- add to Makefile
#     targets for:
#       lib/Bio/Emboss/Methods.pm
#       the bootstrap files included by Emboss.xs ($emboss_boot)
#       Ajax docum. in POD format ( blib/Bio/Emboss/Ajax.pod)

sub MY::postamble {
    my $postamble = <<"MAKE_FRAG";

# --- recreate Methods.pm if any of the .xs files has changed
lib/Bio/Emboss/Methods.pm: \$(XS_FILES)
\t\$(PERL) scripts/get_methods.pl \$(XS_FILES) > \$\@

EMBOSS_BOOT_FILES = $emboss_boot
EMBOSS_XS_MODULES = $xs_modules

# --- recompile if a boot include has changed
Emboss.c: \$(EMBOSS_BOOT_FILES)

# --- recreate the boot includes if any of the module .xs files has changed
\$(EMBOSS_BOOT_FILES): \$(EMBOSS_XS_MODULES)
\t\$(PERL) scripts/get_boot_for_modules.pl \$(EMBOSS_XS_MODULES)

# --- target to create additional POD format documentation
epods: \$(INST_LIB)/Bio/Emboss/Ajax.pod

# --- how to create Ajax POD
\$(INST_LIB)/Bio/Emboss/Ajax.pod:
\t\$(PERL) scripts/extract_doc_for_pod.pl $EMB_SRC_ROOT/ajax/*.c > \$\@

# --- wrapper for emboss.h with some undefs and redefs
#     (solve name conflicts between PERL and EMBOSS)
emboss_perl.h:
\t\$(PERL) scripts/create_cpp_undefs_redefs.pl$emboss_undefs$emboss_redefs > \$\@

strip: \$(OBJECT)
$strip
MAKE_FRAG

   return $postamble;
}


sub write_config_h {
    my ($eversion, $outfile) = @_;

    my $configh = "";

    $configh .= <<EOB if length($eversion);
#ifndef EMBOSS_VERSION
#define EMBOSS_VERSION "$eversion"
#endif
EOB

    if ($eversion ge "2.7.0") {
	$configh .= "#define HAVE_EMBOSS_2_7_0\n";
    }

    if ($eversion ge "2.6.0") {
	$configh .= "#define HAVE_EMBOSS_2_6_0\n";
    }

    if ($eversion ge "2.5.1") {
	$configh .= "#define HAVE_EMBOSS_2_5_1\n";
    }

    open (CONFIGH, ">$outfile");
    print CONFIGH $configh;
    close(CONFIGH);
}

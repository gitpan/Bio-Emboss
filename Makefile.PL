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

$EMB_SRC_ROOT = "/usr/local/src/EMBOSS-2.5.1";


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
@emb_libs = qw(nucleus ajaxg ajax plplot);

$EMB_LIBS = "-L$EMB_ROOT/lib " .
            join (" ", map { "-l$_" } @emb_libs) .
           " " . $EMB_EXT_LIBS;
$EMB_INC =  join " ", map { "-I$EMB_SRC_ROOT/$_" } @emb_libs;


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
    'INC'		=> "-I. -I./include $EMB_INC -I-", 
);

if  (eval {require ExtUtils::Constant; 1}) {
  # If you edit these definitions to change the constants used by this module,
  # you will need to use the generated const-c.inc and const-xs.inc
  # files to replace their "fallback" counterparts before distributing your
  # changes.
  my @names = (qw());
  ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Bio::Emboss',
                                     NAMES        => \@names,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'const-c.inc',
                                     XS_FILE      => 'const-xs.inc',
                                  );

}
else {
  use File::Copy;
  use File::Spec;
  foreach my $file ('const-c.inc', 'const-xs.inc') {
    my $fallback = File::Spec->catfile('fallback', $file);
    copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
  }
}

# --- check adjustments
#     enable if you have problems while building
if (1==0) {
    my ($lib, $dmsg);
    foreach $lib (map { "$EMB_ROOT/lib/lib$_.so" } @emb_libs) {
	next if -r $lib;
	$dmsg .= "couldn't find $lib in \$EMB_ROOT ($EMB_ROOT)\n";
    }

    my $incfile = $EMB_SRC_ROOT . "/nucleus/emboss.h";
    unless (-r $incfile ) {
	$dmsg .= "couldn't find $incfile in \$EMB_SRC_ROOT ($EMB_SRC_ROOT)\n";
    }

    if ($dmsg) {
	warn ("\n" . $dmsg .
	      "\n***\n*** This module might not be built properly\n" .
	      "*** Check Makefile.PL\n***\n\n");
    }
}


# --- add to Makefile
#     targets for:
#       lib/Bio/Emboss/Methods.pm
#       the bootstrap files included by Emboss.xs ($emboss_boot)
#       Ajax docum. in POD format ( blib/Bio/Emboss/Ajax.pod)

sub MY::postamble {
    return <<"MAKE_FRAG"
lib/Bio/Emboss/Methods.pm: \$(XS_FILES)
\t\$(PERL) scripts/get_methods.pl \$(XS_FILES) > \$\@

EMBOSS_BOOT_FILES = $emboss_boot
EMBOSS_XS_MODULES = $xs_modules

Emboss.xs: \$(EMBOSS_BOOT_FILES)

\$(EMBOSS_BOOT_FILES): \$(EMBOSS_XS_MODULES)
\t\$(PERL) scripts/get_boot_for_modules.pl \$(EMBOSS_XS_MODULES)

epods: \$(INST_LIB)/Bio/Emboss/Ajax.pod

\$(INST_LIB)/Bio/Emboss/Ajax.pod:
\t\$(PERL) scripts/extract_doc_for_pod.pl $EMB_SRC_ROOT/ajax/*.c > \$\@
MAKE_FRAG
}

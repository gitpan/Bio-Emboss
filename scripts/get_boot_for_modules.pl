#!/usr/bin/perl

$xsfile = "emboss-boot-xs.inc";
$cfile  = "emboss-boot-c.inc";

$mregex = q/(?:aj|emb)/;

while (<>) {
    # --- lines starting with "aj.." or "emb..." ?
    next unless /^($mregex\w+).*\(.*\)/o;

    $method = $1;
    push (@methods, $method);
}

# --- write prototypes

open (OUT, ">$cfile");

foreach $method (@methods) {
    print OUT "  XS(XS_Bio__Emboss_$method); /* prototype */\n";
}

close (OUT);

open (OUT, ">$xsfile");

print OUT "BOOT:\n";

foreach $method (@methods) {
    print OUT "        newXS(\"Bio::Emboss::${method}\", XS_Bio__Emboss_$method, file);\n";
}

print OUT "\n";

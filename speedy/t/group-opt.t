
print "1..1\n";

# Test for error: Unrecognized switch: -H  (-h will show valid options).
#
$ENV{SPEEDY_TMPBASE} = '/tmp/speedy2';
my ($pid, $shift, $pop) =
    split(/\n/, `$ENV{SPEEDY} -- -g t/scripts/group3 -H x pop`);
$ok = defined($shift) && $shift eq '-H' && defined($pop) && $pop eq 'pop';
print $ok ? "ok\n" : "not ok\n";

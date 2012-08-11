use v6;

my @data = slurp().split(/\n/);

my $out = '';

for @data -> $x {
    if $x == 42 {
        print $out;
        exit();
    }
    $out ~= $x~"\n";
}
print $out;
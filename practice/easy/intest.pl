my @initial = split(' ', <>);
my $k = $initial[1];
my $count = 0;

while(my $line = <>){
    unless($line % $k){
        $count++;
    }
}

print $count."\n";
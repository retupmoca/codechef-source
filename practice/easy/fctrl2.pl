use Math::BigInt;

<>;

my @cache = (1, 1);

my $largest_cached = 1;

while(my $line = <>){
    chomp;
    print fact($line)."\n";
}

sub fact {
    my $n = shift;
    my $res;
    my $res;
    if($n > $largest_cached){
        $res = Math::BigInt->new($cache[$largest_cached]);
    }else{
        return $cache[$n];
    }
    for(my $x=($largest_cached+1);$x<=$n;$x++){
        $res = $res * $x;
        $cache[$x] = $res;
    }
    if($largest_cached < $n){
        $largest_cached = $n;
    }
    return $res;
}
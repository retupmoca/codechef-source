<>;

while(my $line = <>){
    my $result = 0;
    for(my $k=1;$k<=int(log5($line));$k++){
        $result += int($line/(5**$k));
    }
    print $result."\n";
}

sub log5 {
    return log(shift)/log(5);
}
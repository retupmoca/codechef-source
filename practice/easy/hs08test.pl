while(my $line = <>){
    my @line = split(' ', $line);
    if($line[0] % 5){
        print $line[1]."\n";
        next;
    }
    my $result = $line[1] - $line[0] - 0.5;
    if($result >= 0){
        print sprintf("%.02f",$result)."\n";
    }else{
        print $line[1]."\n";
        next;
    }
}
while(my $line = <>){
    chomp;
    $line =~ s/\r$//;
    if($line == 42){
        exit();
    }
    print $line."\n";
}
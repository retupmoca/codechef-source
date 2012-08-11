use v6;

while my $num = get() {
    if $num == 42 {
        exit();
    }
    say $num;
}
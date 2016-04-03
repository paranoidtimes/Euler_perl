#!/usr/bin/perl

@array1 = ( 2, 2, 3, 5, 7 );
@array2 = ( 2, 3, 3, 7 );

foreach (@array1) {
	if ( $_ == $array2[0] ) {
	print "1\n";
		shift(@array2);
	} elsif ( $_ > $array2[0] ) {
	print "2\n";
		push(@new, shift(@array2));
	} else {
	print "3\n";
		next;
	}
}
push(@array1, @new);
foreach (sort({ $a <=> $b } @array1)) {
	print "new $_\n";
}

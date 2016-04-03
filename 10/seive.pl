#!/usr/bin/perl

$find = 100001;
$size = $find * 20; # this might be too small of a depth

@seive = ( 1, 1 );

foreach ( 2..$size ) {
	if ( $seive[$_] == 1 ) {
#print "we're at $_\n";
		next;
	} else {
		$seive[$_] = 0;
print "prime $_\n";
		for( $mark=$_ * 2; $mark<=$size; $mark += $_ ){ 
			$seive[$mark] = 1;
		}
	}
}

$sum = 0;

for $i (0..$size) {
	if ($seive[$i] == 1) {
		next;
	} else {
		if ( $i < 2000000 ) {
			$sum += $i;
		}
	}
}

print "$sum\n";

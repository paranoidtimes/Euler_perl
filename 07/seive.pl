#!/usr/bin/perl

$find = 10001;
$size = $find * 20; # this might be too small of a depth

@seive = ( 1, 1 );

foreach ( 2..$size ) {
	if ( $seive[$_] == 1 ) {
#print "we're at $_\n";
		next;
	} else {
		$seive[$_] = 0;
		for( $mark=$_ * 2; $mark<=$size; $mark += $_ ){ 
			$seive[$mark] = 1;
		}
	}
}

for $i (0..$size) {

	if ($seive[$i] == 1) {
		next;
	} else {
		$prime++;
		if ( $prime == $find ) {
			print "$i\n";
			exit;
		}
	}
}

print "ran out of seive\n";

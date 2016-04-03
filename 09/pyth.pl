#!/usr/bin/perl

$total = 1000;

foreach $first ( 1..$total ) {
	# sum of first and second cant exceed total
	# as such slight gain is had by limiting inner loop
	$secondtotal = $total - $first;
	foreach $second ( $first..$secondtotal ) {
		$million = 2000*$first+2000*$second-2*$first*$second;
		if ( $million == 1000000 ) {
			print "a = $first b = $second\n";
			$third = 1000 - $first - $second;
			print "c = $third\n";
			$product = $first * $second * $third;
			print "abc = $product\n";
			exit;
		}
	}
}

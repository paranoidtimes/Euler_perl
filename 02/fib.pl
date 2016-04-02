#!/usr/bin/perl

$max = 4000000;

$previous = 1;
$current = 2;
$fib = 2;

$sum = 0;

while ( $fib < $max ) {
	$least_sig = $fib & 0x1; # test if even or odd from least significant bit.
	if ( ! $least_sig ) { # only add in even numbers.
		$sum += $fib;
	}
	$fib = $previous + $current;
	$previous = $current;
	$current = $fib;
}

print "$sum\n";

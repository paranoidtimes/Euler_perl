#!/usr/bin/perl

$max = 100;

foreach (1..$max) {
	$square = $_**2;
	$square_total += $square;
}

foreach (1..$max) {
	$sum_total += $_;
}

$sum = $sum_total**2;

$result = $sum - $square_total;

print "$result\n";

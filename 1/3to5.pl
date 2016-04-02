#!/usr/bin/perl

$finish = 1000;
for (my $i = 0; $i < $finish; $i += 3) {
	$total += $i;
}

for (my $i = 0; $i < $finish; $i += 5) {
	$total += $i;
}

for (my $i = 0; $i < $finish; $i += 15) {
	$total -= $i;
}

print "$total\n";

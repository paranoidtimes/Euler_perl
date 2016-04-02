#!/usr/bin/perl

OUTER: foreach $outer (-999..-100) {
	$outer *= -1;
	foreach $inner (-999..-100) {
		$inner *= -1;
		$total = $inner * $outer;
		if ($total eq reverse($total) ) {
			push(@palindromes, $total);
			next OUTER;
		}
	}
}

foreach(sort({ $b <=> $a } @palindromes)) {
	print "$_\n";
	exit;
}

#!/usr/bin/perl


$max = 20;
$total = 1;

foreach $number (1..$max) { # go through the range of numbers
	@new = ();
	@factors = ();
	# pull out all the prime factors
	for( $prime_test=2; $prime_test<=$number; $prime_test += 1 ){ 
		while ( $number % $prime_test == 0 ) {
			$number = $number / $prime_test;
			push(@factors, $prime_test);
		}
	}
	foreach (sort({ $a <=> $b } @prime_factors)) {
		if ( ! $factors[0] ) {
			next;
		}
		if ( $_ == $factors[0] ) {
			shift(@factors); # already have one, dump it
		} elsif ( $_ > $factors[0] ) {
			push(@new, shift(@factors)); # new one, add it
		} else {
			# nothing new, skip to the next one
			next;
		}
	}
	push(@new, @factors); # put any new larger ones
	push(@prime_factors, @new);
}

foreach (@prime_factors) {
	# multiply up all our prime factorization
	$total *= $_;
}

print "$total\n";

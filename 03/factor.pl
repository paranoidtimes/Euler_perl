#!/usr/bin/perl

$number = 600851475143;

# take out the 2 so that we can count twice as fast
while ( $number % 2 == 0 ) {
	print "found factor of 2\n";
	$number = $number / 2;
}
for( $prime_test=3; $prime_test<=$number; $prime_test += 2 ){
	while ( $number % $prime_test == 0 ) {
		print "found factor of $prime_test\n";
		$number = $number / $prime_test;
	}
}

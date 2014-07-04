#!/usr/bin/perl
use warnings;
use strict;
use constant PATH      => '/home/dayzepoch/server1042/';

set_time  ();

sub set_time 
	{
			print STDERR "Changing time in cache file.\n";
			#Change the the number 0 where it says 0*3600 to your desired Timezone e.g +7 GMT would be 7*3600 
			my ($s, $m, $h, $day, $mon, $y) = localtime(time() - 0*3600);
				$y += 1900;
				$mon++;
				$m = ($m + 1); # if it's too unaccurate, you can +/- a minute or two
			my $file2 = PATH."cache/set_time.sqf";
		open  (IN, ">$file2") or die "Can't find $file2";
		print IN '["PASS",[2013,8,3,'.$h.','.$m.']]'; # with full moon
		close (IN);
		print STDERR "Changed time in cache file.\n";
	}
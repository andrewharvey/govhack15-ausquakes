#!/usr/bin/perl -w

# To the extent possible under law, the person who associated CC0
# with this work has waived all copyright and related or neighboring
# rights to this work.
# http://creativecommons.org/publicdomain/zero/1.0/

use strict;
use Text::CSV;
use JSON;

my $csvfile = $ARGV[0];
my $csv = Text::CSV->new ( { binary => 1,  empty_is_undef => 1 } )
                 or die "Cannot use CSV: ".Text::CSV->error_diag ();

open my $csvfh, "<", $csvfile or die "$csvfile: $!";

$csv->column_names($csv->getline($csvfh));

#read through the input CSV file
while ( my $row_hash = $csv->getline_hr( $csvfh ) ) {
  my $x = $row_hash->{'rupture_centroid_x'};
  my $y = $row_hash->{'rupture_centroid_y'};

  if (defined $x && defined $y) {
      print '
      {
          "type": "Feature",
          "geometry": {
              "type": "Point",
              "coordinates": ['. $y . ',' . $x . ']
          },
          "properties": {
              "depth": ' . $row_hash->{'depth'} . ',
              "Mw": ' . $row_hash->{'Mw'} . '
          }
      }';
  }
}

use strict;
use warnings;

use Map::Tube::Graph;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Map::Tube::Graph::VERSION, 0.07, 'Version.');

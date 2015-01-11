# Pragmas.
use strict;
use warnings;

# Modules.
use English qw(-no_match_vars);
use Error::Pure::Utils qw(clean);
use Map::Tube::Prague;
use Map::Tube::Graph;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
eval {
	Map::Tube::Graph->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", "Unknown parameter ''.");
clean();

# Test.
eval {
	Map::Tube::Graph->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	"Unknown parameter 'something'.");
clean();

# Test.
eval {
	Map::Tube::Graph->new;
};
is($EVAL_ERROR, "Parameter 'tube' is required.\n",
	"Parameter 'tube' is required.");
clean();

# Test.
my $obj = Map::Tube::Graph->new(
	'tube' => Map::Tube::Prague->new,
);
isa_ok($obj, 'Map::Tube::Graph');

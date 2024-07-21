use warnings;
use strict;

print("Hi");

# Literals? Scalars!

10
20.2

'hi'

"Strings"

$x = 1;
$y = 3.3;
$s = "some string";

$a = 4;
$b = 5;
print($a + $b);

$port_number = 5500;

# big numbers? underscores
my $first_var = 123_456;
print($first_var, "\n");

my $color = "green";
print "I like the color " . $color . "\n";

# playing with scopes 
$another_color = "purple";
print "this color is " . $another_color . "\n";
{
    my $another_color = "pink";
    print "this color is " . $another_color . "\n";
}

# some String interpolation!
my $amount = 20;
my $s = "The amount is $amount\n";
print($s);

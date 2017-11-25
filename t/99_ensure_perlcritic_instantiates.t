use strict;
use warnings;

use Test::More;
use Perl::Critic qw(critique);

my $critic = Perl::Critic->new();
my $src = 'use strict;';
my (@violations) = $critic->critique( \$src );

ok('Module doesn\'t cause critique to fail');

done_testing;

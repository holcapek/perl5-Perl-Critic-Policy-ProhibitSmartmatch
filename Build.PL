
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    license       => 'perl',
    name          => 'Perl-Critic-Policy-ProhibitSmartmatch',
    module_name   => 'Perl::Critic::Policy::ProhibitSmartmatch',
    dist_abstract => <<'ABSTRACT',
Perl::Critic policies which help to avoid both
explicit and implicit smartmatching
ABSTRACT
    test_requires => {
        'Perl::Critic::TestUtils' => 0,
        'Test::More'              => 0,
    },
    requires => {
        'Perl::Critic::Policy' => 0,
        'Perl::Critic::Utils'  => 0,
        'Readonly'             => 0,
    },
    pm_files => [
        qw(
          lib/Perl/Critic/Policy/ProhibitSmartmatch.pm
          lib/Perl/Critic/Policy/Operators/ProhibitSmartmatch.pm
          lib/Perl/Critic/Policy/ConstrolStructures/ProhibitSwitchStatements.pm
          )
    ],
    test_files => [
        qw(
          t/00_compile.t
          t/01_smartmatch_operator.t
          t/02_switch_statements.t
          )
    ],
);

$build->create_build_script;

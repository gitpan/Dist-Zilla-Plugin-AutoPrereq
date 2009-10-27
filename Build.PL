
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'Dist::Zilla::Plugin::AutoPrereq',
  license       => 'perl',
  dist_abstract => "automatically\ extract\ prereqs\ from\ your\ modules",
  dist_name     => "Dist\-Zilla\-Plugin\-AutoPrereq",
  dist_author   => [
"Jerome\ Quelin",
  ],
  requires      => {
    "English" => '0',
    "version" => '0',
    "ExtUtils::MakeMaker" => '0',
    "Test::More" => '0',
    "perl" => '5.008',
    "File::Find" => '0',
    "Dist::Zilla" => '0',
    "File::Spec::Functions" => '0',
    "Dist::Zilla::Role::FixedPrereqs" => '0',
    "Dist::Zilla::Util" => '0',
    "Moose" => '0',
  },
  script_files => [ qw() ],
);

$build->create_build_script;

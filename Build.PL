
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
    "MooseX::Has::Sugar" => '0',
    "English" => '0',
    "YAML" => '0',
    "version" => '0',
    "perl" => '5.008',
    "Test::More" => '0',
    "File::Find" => '0',
    "Dist::Zilla" => '0',
    "Path::Class" => '0',
    "Dist::Zilla::Role::FixedPrereqs" => '0',
    "Dist::Zilla::Util" => '0',
    "Moose" => '0',
  },
  script_files => [ qw() ],
);

$build->create_build_script;

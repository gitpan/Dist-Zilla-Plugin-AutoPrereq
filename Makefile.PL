
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-AutoPrereq',
  NAME      => 'Dist::Zilla::Plugin::AutoPrereq',
  AUTHOR    => 'Jerome\ Quelin',
  ABSTRACT  => 'automatically\ extract\ prereqs\ from\ your\ modules',
  VERSION   => '0.3.1',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "File::Find::Rule" => '0',
    "version" => '0',
    "Test::Script" => '0',
    "Test::More" => '0',
    "perl" => '5.008',
    "Dist::Zilla" => '0',
    "File::Spec::Functions" => '0',
    "Dist::Zilla::Role::FixedPrereqs" => '0',
    "Dist::Zilla::Util" => '0',
    "Moose" => '0',
  },
);


use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-AutoPrereq',
  NAME      => 'Dist::Zilla::Plugin::AutoPrereq',
  AUTHOR    => "Jerome\ Quelin",
  ABSTRACT  => "automatically\ extract\ prereqs\ from\ your\ modules",
  VERSION   => '1.093190',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "MooseX::Has::Sugar" => '0',
    "English" => '0',
    "YAML" => '0',
    "version" => '0',
    "perl" => '5.008',
    "Test::More" => '0',
    "File::Find" => '0',
    "Dist::Zilla" => '0',
    "File::Spec::Functions" => '0',
    "Dist::Zilla::Role::FixedPrereqs" => '0',
    "Dist::Zilla::Util" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);


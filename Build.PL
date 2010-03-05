
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'automatically extract prereqs from your modules',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'dist_name' => 'Dist-Zilla-Plugin-AutoPrereq',
                       'script_files' => [],
                       'module_name' => 'Dist::Zilla::Plugin::AutoPrereq',
                       'requires' => {
                                       'MooseX::Has::Sugar' => 0,
                                       'PPI' => 0,
                                       'Perl::PrereqScanner' => '0.100521',
                                       'YAML' => 0,
                                       'File::Find' => 0,
                                       'Test::Deep' => 0,
                                       'Moose' => 0,
                                       'Dist::Zilla::Util' => 0,
                                       'English' => 0,
                                       'version' => 0,
                                       'Test::More' => 0,
                                       'perl' => '5.010',
                                       'Version::Requirements' => '0.100630',
                                       'File::Temp' => 0,
                                       'Dist::Zilla' => 0,
                                       'Path::Class' => 0,
                                       'Dist::Zilla::Role::FixedPrereqs' => 0
                                     },
                       'dist_version' => '1.100640',
                       'license' => 'perl'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

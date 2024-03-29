use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'XML::Quick',
    license             => 'perl',
    dist_author         => 'Robert Norris <rob@cataclysm.cx>',
    dist_version_from   => 'lib/XML/Quick.pm',
    requires => {
        'Scalar::Util' => 0,
    },
    build_requires => {
        'Test::More' => 0,
        'Test::XML' => 0,
    },
    add_to_cleanup      => [ 'XML-Quick-*' ],
);

$builder->create_build_script();

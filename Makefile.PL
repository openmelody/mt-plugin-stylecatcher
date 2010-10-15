use ExtUtils::MakeMaker;

use YAML::Any qw(LoadFile);
my $file = "plugins/StyleCatcher/config.yaml";
my $version = LoadFile($file)->{version} ||
    die "No version found in $file";

WriteMakefile(
    NAME            => 'Style Catcher',
    VERSION         => $version,
    DISTNAME        => 'StyleCatcher',
);

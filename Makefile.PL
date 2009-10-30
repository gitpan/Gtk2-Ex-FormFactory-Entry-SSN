use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Gtk2::Ex::FormFactory::Entry::SSN',
    VERSION_FROM      => 'lib/Gtk2/Ex/FormFactory/Entry/SSN.pm', # finds $VERSION
    PREREQ_PM         => {  Gtk2::Ex::FormFactory => 0,
                            Gtk2::Ex::Entry::SSN  => 0,}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT       => ' A Gtk2::Ex::Entry::SSN in a FormFactory framework',
       AUTHOR         => 'Jeffrey Ray Hallock < jeffrey.ray at ragingpony dot com >') : ()),
);

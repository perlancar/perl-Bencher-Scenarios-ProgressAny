package Bencher::Scenario::ProgressAny::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark module startup overhead of Progress::Any modules',

    module_startup => 1,

    participants => [
        {module=>'Progress::Any'},
        {module=>'Progress::Any::Output::Null'},
        {module=>'Progress::Any::Output::TermMessage'},
        {module=>'Progress::Any::Output::TermProgressBarColor'},
    ],
};

1;
# ABSTRACT:

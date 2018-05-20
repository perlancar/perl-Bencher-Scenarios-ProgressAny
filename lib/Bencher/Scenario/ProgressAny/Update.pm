package Bencher::Scenario::ProgressAny::Update;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark update()',

    participants => [
        {
            name => '1000x update()',
            module => 'Progress::Any',
            code_template => q(use Progress::Any '$progress'; $progress->target(1000); for(1..1000) { $progress->update() } $progress->finish),
        },
        {
            name => '1000x update(pos + message)',
            module => 'Progress::Any',
            code_template => q(use Progress::Any '$progress'; $progress->target(1000); for(1..1000) { $progress->update(pos=>$_, message=>$_) } $progress->finish),
        },
    ],
};

1;
# ABSTRACT:

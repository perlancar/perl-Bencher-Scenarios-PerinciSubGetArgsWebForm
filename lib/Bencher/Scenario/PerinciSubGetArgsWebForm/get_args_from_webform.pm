package Bencher::Scenario::PerinciSubGetArgsWebForm::get_args_from_webform;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

my $meta0 = {
    v=>1.1,
    args=>{
    },
};

my $meta2 = {
    v=>1.1,
    args=>{
        a1=>{schema=>'int*', req=>1, pos=>0},
        a2=>{schema=>'str*', req=>1, pos=>1},
    },
};

my $meta2n = {
    v=>1.1,
    args=>{
        a1=>{schema=>[int=>{req=>1},{}], req=>1, pos=>0},
        a2=>{schema=>[str=>{req=>1},{}], req=>1, pos=>1},
    },
};

our $scenario = {
    summary => 'Benchmark get_args_from_webform()',
    participants => [
        {
            fcall_template => 'Perinci::Sub::GetArgs::WebForm::get_args_from_webform(<meta>, <form>, <meta_is_normalized>)',
        },
    ],
    datasets => [
        {
            name => '0 known args + 0 args',
            args => {
                meta => $meta0,
                form => {},
                meta_is_normalized => 0,
            },
        },
        {
            name => 'meta norm + 0 known args + 0 args',
            args => {
                meta => $meta0,
                form => {},
                meta_is_normalized => 1,
            },
        },

        {
            name => '2 known args + 0 args',
            args => {
                meta => $meta2,
                form => {},
                meta_is_normalized => 0,
            },
        },
        {
            name => 'meta norm + 2 known args + 0 args',
            args => {
                meta => $meta2n,
                form => {},
                meta_is_normalized => 1,
            },
        },

        {
            name => '2 known args + 2 args',
            args => {
                meta => $meta2,
                form => {a1=>"123", a2=>"abc"},
                meta_is_normalized => 0,
            },
        },
        {
            name => 'meta norm + 2 known args + 2 args',
            args => {
                meta => $meta2n,
                form => {a1=>"123", a2=>"abc"},
                meta_is_normalized => 1,
            },
        },
    ],
};

1;
# ABSTRACT:

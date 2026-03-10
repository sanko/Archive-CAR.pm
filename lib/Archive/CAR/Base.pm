use v5.40;
use feature 'class';
no warnings 'experimental::class';
#
class Archive::CAR::Base v0.0.2 {
    method to_file ($filename) {
        my $v = 1;
        if ( $self->isa('Archive::CAR::v2') ) { $v = 2; }
        Archive::CAR->write( $filename, $self->roots, $self->blocks, $v );
    }
};
#
1;

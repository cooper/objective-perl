package Objective::Person;

interface {

    pub meth qw(sayMyAge birthday sayMyCredit gotNewCredit);
    pub attr qw(name age gender pronoun);
    prv attr qw(credit);

}

implementation {

    construct {
        my %opts = @_;

        ( name   $opts{name}   );
        ( age    $opts{age}    );
        ( gender $opts{gender} );

        ( credit int rand 9001 );
        ( pronoun ( gender eq 'female' ? 'She' : 'He' ) );

        say "Welcome $opts{name} to the world of confusion!"
    }

    method {
        say sprintf '%s is %d years old.', name, age
    }

    method {
        ( age ( age + 1 ) );
        say sprintf 'Congratulations, %s is now %d years old!', name, age
    }

    method {
        say sprintf '%s\'s credit is: %d points', name, credit
    }

    method {
        my $credit = int rand 9001;
        say sprintf '%s\'s new credit for this month is: %d', name, $credit;
        ( credit $credit )
    }

}

package Objective::Person;

interface {

    # declare methods and attributes

    pub meth qw(sayMyAge birthday sayMyCredit changeName gotNewCredit);
    pub attr qw(name age gender pronoun);
    prv attr qw(credit);

    # set up named parameters

    birthday   qw(party gifts);
    changeName qw(name reason);

}

implementation {

    # constructor method

    construct {
        my %opts = @_;

        ( name   $opts{name}   );
        ( age    $opts{age}    );
        ( gender $opts{gender} );

        ( credit int rand 9001 );
        ( pronoun ( gender eq 'female' ? 'She' : 'He' ) );

        say "Welcome $opts{name} to the world of confusion!";
    }

    # sayMyAge

    method {
        say sprintf '%s is %d years old.', name, age;
    }

    # birthday

    method {
        my ($party, $gifts);
        ( age ( age + 1 ) );
        say sprintf 'Congratulations, %s is now %d years old!', name, age;
        say sprintf '%s received %d gifts at the party on %s', name, $gifts, $party;
    }

    # sayMyCredit

    method {
        say sprintf '%s\'s credit is: %d points', name, credit;
    }

    # changeName

    method {
        my ($newname, $reason) = @_;
        say sprintf '%s\'s new name is %s! Reason for change: %s', name, $newname, $reason;
        ( name $newname );
    }

    # gotNewCredit

    method {
        my $credit = shift;
        say sprintf '%s\'s new credit for this month is: %d', name, $credit;
        ( credit $credit );
    }

}

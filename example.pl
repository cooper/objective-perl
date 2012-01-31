use warnings;
use strict;
use feature 'say';

use objective qw(Person);

my $person = Person->new(
    name   => 'Michael',
    age    => 20,
    gender => 'male'
);

$person->sayMyAge(); # 20
$person->birthday(party => 'Thursday', gifts => 20); # named parameters in any order
$person->sayMyAge(); # 21

say $person->name;   # Michael

say $person->credit;    # does not work
$person->sayMyCredit(); # does work because it is accessed inside the class
$person->gotNewCredit(int rand 9001);

$person->changeName(name => 'Jack', reason => 'Legal issues');
say $person->name; # Jack

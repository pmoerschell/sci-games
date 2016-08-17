# sci-games

The first problem's description stated that all the start and end dates were to be between 1900 and 2000.
It's output was to be people still alive.
Obviously, the output would be nothing if all the end dates are before 2000.

I wrote the simplest solution with an input file that included birthdate, end-date, and name and then a shell
script that took as an argument the current year.  So you can run it with

agecheck.sh 1950
or
agecheck.sh 1980

and get the results as if the current year is the passed in value.

I couldn't determine if this was just an old question or a exercise to make sure I caught the issue.  :)

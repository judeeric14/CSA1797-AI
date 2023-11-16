person(john, date(1990, 5, 15)).
person(mary, date(1985, 8, 22)).
person(bob, date(1995, 2, 10)).
person(alice, date(1980, 11, 5)).
is_adult(Person) :-
    person(Person, date(Year, _, _)),
    current_year(CurrentYear),
    Age is CurrentYear - Year,
    Age >= 18.
current_year(2023). 
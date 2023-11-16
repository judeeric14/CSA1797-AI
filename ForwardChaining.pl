parent(john, mary).
parent(john, bob).
parent(mary, anne).
parent(bob, carol).
siblings(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
infer_siblings(X, Y) :-
    siblings(X, Y),
    write(X), write(' and '), write(Y), write(' are siblings.'), nl.
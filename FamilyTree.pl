parent(john, jim).
parent(john, ann).
parent(ann, peter).
parent(ann, lisa).
parent(jim, bob).
parent(bob, alice).
father(Father, Child) :-
    parent(Father, Child),
    male(Father).
mother(Mother, Child) :-
    parent(Mother, Child),
    female(Mother).
child(Child, Parent) :-
    parent(Parent, Child).
sibling(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    Sibling1 \= Sibling2.
male(john).
male(jim).
male(peter).
male(bob).
female(ann).
female(lisa).
female(alice).
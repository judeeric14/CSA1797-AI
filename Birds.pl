can_fly(sparrow).
can_fly(eagle).
can_fly(penguin).
can_fly(ostrich).

bird_can_fly(Bird) :-
    can_fly(Bird),
    write(Bird), write(' can fly.'), nl.

bird_cannot_fly(Bird) :-
    \+ can_fly(Bird),
    write(Bird), write(' cannot fly.'), nl.

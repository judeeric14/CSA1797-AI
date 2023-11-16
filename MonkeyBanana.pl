at(monkey, a).
at(banana, c).
at(box, b).
not_holding(banana).
move(state(A, _, A, H), grasp, state(A, grasp, A, H)).
move(state(A, B, A, H), climb, state(A, B, A, standing_on_box(H))).
move(state(A, B, A, standing_on_box(H)), push, state(A, B, A, H)).
move(state(A, B, A, H), walk, state(C, B, C, H)) :- move(A, C).
move(state(A, A, A, H), climb, state(A, A, A, standing_on_box(H))).
move(state(A, B, A, H), push, state(A, B, A, H)).
goal(state(c, _, c, holding(banana))).
solve(State, _, []) :- goal(State).
solve(State, Visited, [Action | Actions]) :-
    move(State, Action, NextState),
    \+ member(NextState, Visited),
    solve(NextState, [NextState | Visited], Actions).

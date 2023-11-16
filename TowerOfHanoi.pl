hanoi(1, A, _, C) :-
    write('Move disk 1 from '), write(A), write(' to '), write(C), nl.
hanoi(N, A, B, C) :-
    N > 1,
    M is N - 1,
    hanoi(M, A, C, B),
    write('Move disk '), write(N), write(' from '), write(A), write(' to '), write(C), nl,
    hanoi(M, B, A, C).

% N-Queens Problem
solution(N, Solution) :-
    numlist(1, N, Columns),
    permutation(Columns, Solution),
    safe(Solution).

safe([]).
safe([N|Rest]) :-
    safe(Rest),
    \+ attack(N, Rest, 1).

attack(_, [], _).
attack(Y, [Y1|Rest], Dist) :-
    Y1 - Y =\= Dist,
    Y - Y1 =\= Dist,
    Dist1 is Dist + 1,
    attack(Y, Rest, Dist1).
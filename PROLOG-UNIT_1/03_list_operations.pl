% Member check
my_member(X, [X|_]).
my_member(X, [_|Tail]) :- my_member(X, Tail).

% Concatenation
my_concat([], L, L).
my_concat([H|T], L, [H|Res]) :- my_concat(T, L, Res).

% Length of list
my_length([], 0).
my_length([_|T], N) :- my_length(T, N1), N is N1 + 1.
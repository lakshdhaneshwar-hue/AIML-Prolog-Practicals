% Hill Climbing Local Search
neighbor(X, Y) :- Y is X + 1.
neighbor(X, Y) :- Y is X - 1.

eval(X, Val) :- Val is - (X * X) + 4.
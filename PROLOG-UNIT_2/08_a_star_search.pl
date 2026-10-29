% A* Search algorithm structure implementation
% f(n) = g(n) + h(n)
edge(a, b, 1).
edge(b, c, 2).
heuristic(c, 0).
heuristic(b, 2).
heuristic(a, 4).
% Breadth First Search (BFS)
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).

bfs(Start, Goal, Path) :-
    breadth_first([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

breadth_first([[Goal|Rest]|_], Goal, [Goal|Rest]).
breadth_first([[Node|Rest]|Queue], Goal, Path) :-
    findall([Next, Node|Rest],
            (edge(Node, Next), \+ member(Next, [Node|Rest])),
            NewPaths),
    append(Queue, NewPaths, UpdatedQueue),
    breadth_first(UpdatedQueue, Goal, Path).
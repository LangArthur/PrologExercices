link(r,q).
link(r,s).
link(s,p).
link(q,p).
link(k,p).
link(k,l).
link(l,p).
link(k,m).
link(k,u).
link(m,u).


go(StartNode,StartNode, [StartNode]).
go(StartNode, EndNode,[StartNode | Res]):-
    link(StartNode,Z),
    go(Z, EndNode, Res).

all_routes(StartNode,EndNode,Res) :-
    findall(X, go(StartNode, EndNode, X), Res).
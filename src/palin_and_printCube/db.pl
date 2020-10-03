print_cube(S, E) :-
    Cube is S * S * S,
    Cube < E,
    integer(Cube),
    format('~w~n', [Cube]).
print_cube(_, _).

cube_until(E, E) :-
    print_cube(E, E).
cube_until(S, E) :-
    print_cube(S, E),
    N is S + 1,
    cube_until(N, E).

reverse([Elem], [Elem]).
reverse([A, B], [B, A]).
reverse([Head|Tail], Res) :-
    reverse(Tail, T),
    append(T, [Head], Res).

palin([_]).
palin(X) :-
    reverse(X, X).

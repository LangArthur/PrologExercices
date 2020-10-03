my_last(Last, [Last]).
my_last(Last, [_|Tail]) :-
    my_last(Last, Tail).

my_last_but_one(OneLast, [OneLast, _]).
my_last_but_one(OneLast, [_ | Tail]) :-
    my_last_but_one(OneLast, Tail).

element_at(E, [E | _], 0).
element_at(E, [_ | Tail], N) :-
    T is N - 1,
    element_at(E, Tail, T).

my_size_list([], 0).
my_size_list([_], 1).
my_size_list([_|Tail], S) :-
    my_size_list(Tail, T),
    S is T + 1.

reverse([Elem], [Elem]).
reverse([A, B], [B, A]).
reverse([Head|Tail], Res) :-
    reverse(Tail, T),
    append(T, [Head], Res).

isPalindrom([_]).
isPalindrom(X) :-
    reverse(X, X).

my_flatten([], []).
my_flatten([Head | Tail], [NewHead | T]) :-
    is_list(Head),
    my_flatten(Head, NewHead),
    my_flatten(Tail, T).
my_flatten([Head | Tail], [Head | T]) :-
    my_flatten(Tail, T).

convert_term(add(A,B), ResA+ResB) :-
    convert_term(A, ResA),
    convert_term(B, ResB).


convert_term(subtract(A,B), ResA-ResB) :-
    convert_term(A, ResA),
    convert_term(B, ResB).


convert_term(multiply(A,B), ResA*ResB) :-
    convert_term(A, ResA),
    convert_term(B, ResB).


convert_term(divide(A,B), ResA/ResB) :-
    convert_term(A, ResA),
    convert_term(B, ResB).
convert_term(Exp, Exp).

go(Exp, Res):-
    convert_term(Exp, Res),
    output_term(Res).

output_term(Result) :-
    convert_term(X, Result),
    format("~w", [X]).
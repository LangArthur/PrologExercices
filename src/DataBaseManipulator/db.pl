:- dynamic balloon/2.

balloon(size(big), color(red)).
balloon(size(big), color(green)).
balloon(size(medium), color(magenta)).
balloon(size(medium), color(cyan)).
balloon(size(small), color(red)).
balloon(size(small), color(yellow)).

% change all balloon with the oldColor to newColor
change_balloons([OldColor/NewColor | XS]) :-
    findall(_, change_balloon([OldColor/NewColor]), _),
    write(XS),nl,
    change_balloons(XS).
change_balloons([OldColor/NewColor]) :-
    findall(_, change_balloon([OldColor/NewColor]), _).
change_balloons([]).


change_balloon([OldColor/NewColor]) :-
    retract(balloon(Size, color(OldColor))),
    assertz(balloon(Size, color(NewColor))).

:- dynamic add_rule.
% add a new rule to have a balloon party
add_rule() :-
    assertz(party_balloons(color(C)) :- balloon(size(medium), color(C))),
    assertz(party_balloons(color(C)) :- balloon(size(big), color(C))),
    retractall(add_rule).

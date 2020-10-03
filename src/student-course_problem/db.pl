% university
university( jonkoping).

% available master
master( aimaster, jonkoping).
master( uxmaster, jonkoping).

% aimaster cours
cours( aicours, aimaster).
cours( math, aimaster).

% uxmaster cours
cours( design, uxmaster).

% students
studient( tom, aimaster).
studient( fred, aimaster).
studient( paul, uxmaster).

% check if a student studies a cours
studie(Student, Cours) :-
    studient(Student, Prog),
    cours(Cours, Prog).

% check if a student is enrolled in university
isEnrolled(Student, Uni) :-
    master(Master, Uni),
    studient(Student, Master).

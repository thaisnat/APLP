:- initialization main.

main :-
    read(X),
    sum_list(X, Y),
    max_list(X, M),
    min_list(X, V),
    R is (M-V)+Y,
    write(R).

compara_primeiro([X|_], [Y|_]) :-(X = Y).

compara_ultimo([X|[]], X).
compara_ultimo([_|X1], Y) :- compara_ultimo(X1, Y).

poetica(X, Y, 'poetica') :- compara_primeiro(X, Y), compara_ultimo(X, R), compara_ultimo(Y, R1), R = R1.
poetica(_, _, 'naopoetica').

:- initialization main.

main :-
  read(X),
  read(Y),
  poetica(X, Y, R),
  write(R), nl.

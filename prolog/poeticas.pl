comparaprimeiro([X|_], [Y|_]) :-(X = Y).

comparaultimo([X|[]], X).
comparaultimo([_|XS], Y) :- comparaultimo(XS, Y).

poetica(X, Y, 'poetica') :- comparaprimeiro(X, Y), comparaultimo(X, R), comparaultimo(Y, R1), R = R1.
poetica(_, _, 'naopoetica').

:- initialization main.

main :-
  read(A1),
  read(A2),
  poetica(A1, A2, R),
  write(R), nl.

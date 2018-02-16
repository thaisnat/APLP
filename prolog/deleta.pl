remove(_,[],[]).
remove(E,[E|C],L) :- remove(E,C,L).
remove(E,[E1|C], [E1|C1]) :- E \== E1, remove(E,C,C1).

remove_rep([],[]).
remove_rep([E|C], [E|C1]) :- remove(E,C,L), remove_rep(L,C1).

:- initialization main.

main :-
  read(X),
  remove_rep(X, S),
  write(S), nl.

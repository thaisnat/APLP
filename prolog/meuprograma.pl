gato(tom).
rato(jerry).
passarinho(piu-piu).
animal(X):- gato(X).
animal(X):- rato(X).
animal(X):- passarinho(X).

notas(joao, 5.0, 7.0, 8.0).
notas(maria, 6.0, 6.0, 6.0).
notas(joana, 8.0, 5.1, 10).
notas(mariana, 9.0, 9.0, 3.0).
notas(cleuza, 8.5, 7.0, 8.6).
notas(jose, 3.5, 3.0, 2.0).
notas(mary, 10.0, 8.0, 7.0).

media(X, M) :- notas(X, A, B, C), M is ((A + B + C) / 3).

situacao(X, S) :- media(X, M), S = aprovado, M >= 7.0, M =< 10.0.
situacao(X, S) :- media(X, M), S = final, M >= 4.0, M < 7.
situacao(X, S) :- media(X, M), S = reprovado, M >= 0.0, M < 4.0.

:- initialization(main).

main :-
  repeat,
  read(X),
  situacao(X, Y),
  write(Y),nl,
  halt(0).

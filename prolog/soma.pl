procura_maior([], A) :- A is 0.
procura_maior([X|Y], A) :- procura_maior(Y| A1), A is X > A1.

procura_menor([], B) :- B is 0.
procura_menor([C|D], B) :- procura_menor(D| B1), B is C < B1.

soma_elementos([], S) :- S is 0.
soma_elementos([A|B], S) :- soma_elementos(B, S1), S is A + S1.

diferenca(W) :- W = procura_maior([A|B], S) - procura_menor([A|B], S).

soma_lista([A|B],Q) :- Q = soma_elementos([A|B], S) + diferenca(W). 

main :-
  repeat,
  read([]),
  soma_lista([A|B], Z),
  write(Z),nl,
  halt(0).

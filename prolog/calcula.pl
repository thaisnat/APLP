procura_maior([A],A).
procura_maior([A|B],R) :- procura_maior(B,R1), (A > R1 -> R = A ; R = R1).

procura_menor([A],A).
procura_menor([A|B],R) :- procura_menor(B,R1), (A < R1 -> R = A ; R = R1).

soma_elementos([],0).
soma_elementos([A|B],R) :- soma_elementos(B, R1), R is A + R1.

soma_lista(X, Y, S, R) :- R is ((X - Y) + S).

:- initialization(main).

main :-
	read(A),
	procura_maior(A,X),
	procura_menor(A,Y),
	soma_elementos(A,S),
	soma_lista(X, Y, S, R),
	write(R),nl,
	halt(0).

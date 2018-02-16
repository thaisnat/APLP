
opAnd(true,true,true,true).
opAnd(_,_,_,false).

opOr(false,false,false,false).
opOr(_,_,_,false).

numMagico(A,B,C,O,R):- O == and, opAnd(A,B,C,R).
numMagico(A,B,C,O,R):- O == or, opOr(A,B,C,R).


:- initialization(main).
main:-
	repeat,
	read(A),
	read(B),
	read(C),
	read(O),
	numMagico(A,B,C,O,R),
	write(Resul), nl,
	halt(0).

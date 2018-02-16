% 1
adiciona(X,L,[X|L]).

% 2
apaga(X,[X|R],R).
apaga(X,[Y|R1],[Y|R2]):-
	  apaga(X,R1,R2).

% 3
membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

% 4
concatena([],L,L).
concatena([X|L1],L2,[X|L3]):- concatena(L1,L2,L3).

% 5
comprimento(0,[]).
comprimento(N,[_|R]):- comprimento(N1,R),
					   N is 1 + N1.
 
% 6
max(X,[X]).
max(X,[Y|R]):- max(X,R), X > Y, !.
max(Y,[Y|_]).

% 7
somatorio(0,[]).
somatorio(X,[Y|R]):- somatorio(S,R),
				     X is S+Y.
				     
media(X,L):- comprimento(N,L),
			 somatorio(S,L),
			 X is S/N.
 
nelem(N,L,X):-nelem(N,1,L,X).
nelem(N,N,[X|_],X):-!.
nelem(N,I,[_|R],X):- I1 is I+1,
					 nelem(N,I1,R,X).
 
% testar os predicados:
q1a(L):-adiciona(1,[2,3],L).
q1b(X):-adiciona(X,[2,3],[1,2,3]).

q2a(L):-apaga(a,[a,b,a,c],L).
q2b(L):-apaga(a,L,[b,c]).

q3a:-membro(b,[a,b,c]).
q3b(X):-membro(X,[a,b,c]).
q3c(L):-findall(X,membro(X,[a,b,c]),L).

q4a(L):-concatena([1,2],[3,4],L).
q4b(L):-concatena([1,2],L,[1,2,3,4]).
q4c(L):-concatena(L,[3,4],[1,2,3,4]).

q5(X):-comprimento(X,[a,b,c]).

q6(X):-max(X,[3,2,1,7,4]).

q7(X):-media(X,[1,2,3,4,5]).

q8:-nelem(2,[1,2,3],2).
q8b(X):-nelem(3,[1,2,3],X).
q8c(X):-nelem(4,[a,b,c,d,e,f,g],X).

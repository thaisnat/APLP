retirar_todas(_,[],[]).
retirar_todas(Elem,[Elem|Cauda],L) :- retirar_todas(Elem,Cauda,L).
retirar_todas(Elem,[Elem1|Cauda], [Elem1|Cauda1]) :- Elem \== Elem1, retirar_todas(Elem,Cauda,Cauda1).

retirar_rep([],[]).
retirar_rep([Elem|Cauda], [Elem|Cauda1]) :- retirar_todas(Elem,Cauda,Lista), retirar_rep(Lista,Cauda1).

:- initialization main.

main :-
  read(Lista),
  retirar_rep(Lista, SemRepetidos),
  write(SemRepetidos), nl.



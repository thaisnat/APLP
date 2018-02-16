/*
Existem duas pilhas (a e b) e quatro cubos com números (1,2,3,4). O jogo inicia-se
com 1 no topo e 2 na base da pilha a e 3 no topo e 4 na base da pilha b. Em cada
jogada, a criança pode mover de 1 a 3 cubos da pilha a para a pilha b (ou vice-versa,
de b para a). Por exemplo, no início pode mover-se o cubo 1 para a pilha b (jogada
ab:[1]). Outra opção seria mover 1,2 para a pilha b (jogada ab:[1,2]), sendo que neste
caso a pilha a ficaria vazia e a pilha b com os cubos 1,2,3,4 (desde o topo até à base).
Não é possível trocar a ordem vertical dos cubos. Ou seja, no início não é possível
fazer a jogada ab:[2,1], onde a intenção era ter os cubos 2,1,3,4 na pilha b. O jogo
termina quando existirem cubos pares numa pilha qualquer e cubos impares noutra.
*/

:-[solvedf].

initial(b([1,2],[3,4])).
final(b([1,3],[_,_])).
final(b([3,1],[_,_])).
final(b([2,4],[_,_])).
final(b([4,2],[_,_])).

transition(b(L,[A|R]),ba:[A],b([A|L],R)).
transition(b(L,[A,B|R]),ba:[A,B],b([A,B|L],R)).
transition(b(L,[A,B,C|R]),ba:[A,B,C],b([A,B,C|L],R)).

transition(b([A|R],L),ab:[A],b(R,[A|L])).
transition(b([A,B|R],L),ab:[A,B],b(R,[A,B|L])).
transition(b([A,B,C|R],L),ab:[A,B,C],b(R,[A,B,C|L])).

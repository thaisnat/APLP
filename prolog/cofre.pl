/*
“Encontre uma sequência de 4 dígitos (de 1 a 9), que permite abrir um cofre,
sendo que:
1) o primeiro número é maior que o terceiro;
2) o primeiro número é menor que o segundo;
3) o quarto número é igual à soma do terceiro com o segundo;
4) o primeiro número é impar;
5) o primeiro número é igual ao terceiro+1;
6) o segundo número é o 7.”
*/

% puzzle exemplo

numero([1,2,3,4,5,6,7,8,9]). % números possíveis

gerar(L):- numero(N),
		   gera_linha(N,L).
			
gera_linha(L,[N1,N2,N3,N4]):- select(N1,L,L1),
							  select(N2,L1,L2),
							  select(N3,L2,L3),
							  select(N4,L3,_).
							  
testar([N1,7,N3,N4]):- N1<7, %
					   N1>N3,%
					   N4 is N3+7,%
					   N1 is N3+1,
                       1 is N1 mod 2.
                       
puzzle(L):- gerar(L), testar(L).

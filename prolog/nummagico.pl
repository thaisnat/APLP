inicial(1).

num_magico(num,true):- (num mod inicial) =;= 0.
num_magico(num,false):- (num mod inicial) \= 0.

:- initialization(main).
main:-
read(num), nl,
num_magico(num, resul),
write(resul), nl,
halt(0).

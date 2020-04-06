max(X,Y,X):- X>=Y.
max(X,Y,Y):- Y>X.

max2(X,Y,X):-
	X>Y,!. /* если первое число больше второго,
	            то первое число - максимум */
max2(_,Y,Y).  /* в противном случае максимумом будет
	            второе число */

max3(X,Y,Z,M):-
	max2(X,Y,XY), /* XY - максимум из X и Y */
	max2(XY,Z,M). /* M - максимум из XY и Z */

start:- sum.
sum:- write('X= '),read(X),
	write('Y= '),read(Y),
	S is X+Y,
	write('Sum= '),write(S).

average(X,Y,Z):-Z is (X+Y)/2.



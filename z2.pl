max(X,Y,X):- X>=Y.
max(X,Y,Y):- Y>X.

max2(X,Y,X):-
	X>Y,!. /* ���� ������ ����� ������ �������,
	            �� ������ ����� - �������� */
max2(_,Y,Y).  /* � ��������� ������ ���������� �����
	            ������ ����� */

max3(X,Y,Z,M):-
	max2(X,Y,XY), /* XY - �������� �� X � Y */
	max2(XY,Z,M). /* M - �������� �� XY � Z */

start:- sum.
sum:- write('X= '),read(X),
	write('Y= '),read(Y),
	S is X+Y,
	write('Sum= '),write(S).

average(X,Y,Z):-Z is (X+Y)/2.



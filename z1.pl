% AI ,Written By Rusakov Aleksey Rusal@bk.ru
    male("����").
    male("���������").
    male("�������").
    male("������").
    male("�������").
    male("������").
    male("�������").



    female("�����").
    female("�������").
    female("������").
    female("�����").
    female("�������").
    female("���").

% ��� ����
    parent("����","�������").
    parent("�����","�������").
    parent("�������","������").
    parent("���������","������").
    parent("�������","�����").
    parent("������","�����").
    parent("������","�������").
    parent("�����","�������").
    parent("�������","������").
    parent("�������","���").
    parent("�������","�������").
    parent("�������","������").
    parent("�������","���").
    parent("�������","�������").

%���� parent � male, �� Father
    father(X,Y):- parent(X,Y),male(X).
    mother(X,Y):- parent(X,Y),female(X).
    grandparent(X,Z):- parent(X,Y),parent(Y,Z).
    offspring(X,Y):- parent(Y,X).
    sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\=Y.
    pred(X,Y):-parent(X,Y).
    pred(X,Y):-parent(X,Z),pred(Z,Y).
    same(X,Y):- X=Y.
    diff(X,Y):- not(same(X,Y)).

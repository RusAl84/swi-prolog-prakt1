% AI ,Written By Rusakov Aleksey Rusal@bk.ru
    male("Иван").
    male("Александр").
    male("Дмитрий").
    male("Михаил").
    male("Алексей").
    male("Сережа").
    male("Георгий").



    female("Мария").
    female("Людмила").
    female("Галина").
    female("Диана").
    female("Надежда").
    female("Аня").

% кто кого
    parent("Иван","Людмила").
    parent("Мария","Людмила").
    parent("Людмила","Михаил").
    parent("Александр","Михаил").
    parent("Дмитрий","Диана").
    parent("Галина","Диана").
    parent("Михаил","Алексей").
    parent("Диана","Алексей").
    parent("Алексей","Сережа").
    parent("Алексей","Аня").
    parent("Алексей","Георгий").
    parent("Надежда","Сережа").
    parent("Надежда","Аня").
    parent("Надежда","Георгий").

%если parent и male, то Father
    father(X,Y):- parent(X,Y),male(X).
    mother(X,Y):- parent(X,Y),female(X).
    grandparent(X,Z):- parent(X,Y),parent(Y,Z).
    offspring(X,Y):- parent(Y,X).
    sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\=Y.
    pred(X,Y):-parent(X,Y).
    pred(X,Y):-parent(X,Z),pred(Z,Y).
    same(X,Y):- X=Y.
    diff(X,Y):- not(same(X,Y)).

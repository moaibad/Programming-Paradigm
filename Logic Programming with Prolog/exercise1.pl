parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).
female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).
male(john).
male(jim).
male(dave).

grandfather(X,Y) :- parent(X,P),parent(P,Y),male(X).
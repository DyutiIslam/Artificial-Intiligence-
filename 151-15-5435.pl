male(a).
male(c).
male(d).
male(e).
male(y).

female(x).
female(z).
female(b).
female(f).
female(g).

father(a,b).
father(a,c).
father(c,f).
father(c,g).
father(y,d).
father(y,e).
father(a,y).
father(a,z).


mother(x,b).
mother(x,c).
mother(b,d).
mother(b,e).
mother(z,f).
mother(z,g).

cousin(H,I):-
	father(J,H),
	father(K,J),
	father(L,I),
	father(K,L).

uncle(H,I):-
	male(H),
	father(J,I),
	father(K,J),
	father(K,H).
Aunty(H,I):-
	female(H),
	father(J,I),
	father(K,J),
	father(K,H).
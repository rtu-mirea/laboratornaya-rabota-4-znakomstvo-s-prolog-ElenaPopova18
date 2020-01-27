predicates	
	male(String)
	female(String)
	nondeterm parent(String, String)
	nondeterm ancestor(String,String)
	nondeterm brother(String, String)
	nondeterm sister(String, String)
	nondeterm grandfather(String, String)
	nondeterm grandmother(String, String)
	nondeterm aunt(String, String)
clauses
	male("Vasya").
	male("Artem").
	male("Oleg").
	female("Olga").
	female("Tanya").
	female("Sveta").
	female("Nastya").
	parent("Olga", "Tanya").
	parent("Vasya", "Tanya").
	parent("Olga", "Nastya").
	parent("Vasya", "Nastya").
	parent("Olga", "Artem").
	parent("Vasya", "Artem").
	parent("Oleg","Sveta").
	parent("Tanya", "Sveta").
	ancestor(X,Z):-parent(X,Z),X<>Z.
	ancestor(X,Z):-parent(X,Y),ancestor(Y,Z),X<>Z.
	brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X<>Y.
	sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X<>Y.
	grandfather(X,Y):-parent(X,Z),parent(Z,Y),male(X),X<>Y.
	grandmother(X,Y):-parent(X,Z),parent(Z,Y),female(X),X<>Y.
	aunt(X,Y):-parent(Z,Y),sister(X,Z),female(X),X<>Y.	aunt(X,Y):-parent(Z,Y),sister(X,Z),female(X),X<>Y.
goal
	sister("Tanya","Artem").
	%grandmother("Olga","Sveta").
	%grandmother("Tanya","Sveta").
	%aunt(Who,"Sveta").
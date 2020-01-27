domains
  sym=symbol
  n=integer

predicates	
	nondeterm likes(sym,sym)
	nondeterm cost(sym,n)
	nondeterm have(sym,n)
	nondeterm can_buy(sym,sym)
clauses
	likes(tom,cat).
	likes(tom,apple).
	likes(jane,dress).
	likes(jane,cat).
	cost(cat,150).
	cost(apple,30).
	cost(dress,200).
	have(tom,100).
	have(jane,150).
	can_buy(X,Y):-likes(X,Y),cost(Y,Price),have(X,Money),Price<=Money.
goal
	can_buy(tom,cat).
	%can_buy(jane,cat).
	%can_buy(jane,dress).
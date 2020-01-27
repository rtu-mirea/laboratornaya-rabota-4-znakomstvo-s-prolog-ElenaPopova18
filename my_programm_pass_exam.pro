domains
  sym=symbol
  n=integer

predicates	
	nondeterm went(sym)
	nondeterm know_ticket(sym,n)
	nondeterm pull_ticket(sym,n)
	nondeterm pass_exam(sym)
clauses
	went(tom).
	went(jane).
	know_ticket(tom,1).
	know_ticket(tom,2).
	know_ticket(tom,3).
	know_ticket(jane,4).
	know_ticket(jane,5).
	know_ticket(jane,6).
	pull_ticket(tom,2).
	pull_ticket(tom,10).
	pass_exam(X):-went(X),know_ticket(X,Number),pull_ticket(X,Ticket),Number=Ticket.
goal
	pass_exam(tom).
	%pass_exam(jane).
	%pass_exam(olga).

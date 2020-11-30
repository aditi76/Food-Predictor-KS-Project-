predicates
	start
	max(integer,integer,integer,symbol)
	min(integer,integer,integer,symbol)
	
	select(integer)
clauses
	start:-write("Enter Food Item: 1. Vadapav, 2. kadhahalwa,3. dhokla"),nl,readint(C),nl,select(C).
	
	
	
	select(1):-
		C=20,
		D=30,
		E=40,max(C,D,E,vadapav),nl,min(C,D,E,vadapav).
		
	select(2):-
		C=70,
		D=100,
		E=150,max(C,D,E,kadahalwa),nl,min(C,D,E,kadahalwa).
	select(3):-
		C=50,
		D=60,
		E=80,max(C,D,E,dhokla),nl,min(C,D,E,dhokla).

	max(P,Q,R,T):-P>Q,P>R,write("maximum price of "),write(T),write("is"),write(P),write("rs.").
	max(P,Q,R,T):-P<Q,Q>R,write("maximum price of "),write(T),write("is"),write(Q),write("rs.").
	max(P,Q,R,T):-R>Q,R>P,write("maximum price of "),write(T),write("is"),write(R),write("rs.").
	
	min(P,Q,R,T):-P<Q,P<R,write("minimum price of "),write(T),write("is"),write(P),write("rs.").
	min(P,Q,R,T):-Q<P,Q<R,write("minimum price of "),write(T),write("is"),write(Q),write("rs.").
	min(P,Q,R,T):-R<P,R<Q,write("minimum price of "),write(T),write("is"),write(R),write("rs.").
	
	
	
	
domains
	name,sym,type = symbol
	price = integer
predicates
	food(name,price,type)
	order(char,integer)
	start
clauses
	start:-write("You can start ordering!"),nl,order('y',0).
	order('n',F):-write("-----ORDERS-----"),nl,write("Total amount of your ordering",F),nl.
	order('y',B):-write("enter name of food and type of food: "),readln(C),readln(N),nl,
	food(C,D,N),T=B+D,write("Continue??(y/n): "),readchar(A),nl,order(A,T). 

	food(vadapav,20,plain).
	food(vadapav,30,butter).
	food(vadapav,40,cheese).

	food(kadhahalwa,70,plain).
	food(kadhahalwa,100,dryfruits).

	food(dhokla,50,white).
	food(dhokla,60,yellow).
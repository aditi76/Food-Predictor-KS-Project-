domains
	type,qty,desc,nameofitem=symbol
	x=item(qty,desc,nameofitem)
	i=items(type,x)
predicates
	readitems(i)
	loop(integer)
	start
	

clauses
start:-write("Enter number of items: "),readint(X),nl,loop(X).
		loop(0).
		loop(X):-XX=X-1,readitems(Item),nl,write(Item),nl,loop(XX).
		
readitems(items(Type,item(Qty,Desc,Name))):-
		
		write("Enter Name of the Item you would like to order: "),readln(Name),
		write("Enter Type of the Item: "),readln(Type),
		write("Enter Description of the taste of the Item (Sweet/Sour/Spicy): "),readln(Desc),
		write("Enter Quantity of the Item: "),readln(Qty).
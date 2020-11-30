domains
	name,type,taste=symbol
	price=integer
database
	foodItem(name,price,type,taste)
predicates
	go1
	list(integer)
clauses
	go1:-
		write("Select options"),nl,
		write("1. enter new details of food items"),nl,
		write("2. delete food item"),nl,
		write("3. display food item"),nl,
		write("4. list of food item having more than specified price "),nl,
		write("5. Display list of all Food Items : "),nl,
		readInt(Input),
		list(Input).
	list(1):-
		write("enter name::"),
		readln(Name),
		write("enter price:"),
		readint(Price),
		write("enter Type:"),
		readln(Type),
		write("enter Taste:"),
		readln(Taste),
		asserta(foodItem(Name,Price,Type,Taste)),
		save("foodItem.txt"),
		write("continue(y/n)?"),
		readChar(Ans),
		Ans='y',nl,
		go1.
	list(2):-
		write("enter name and type of food you want to delete"),
		readln(Name),readln(Type),
		retract(foodItem(Name,_,Type,_)),nl,
		save("foodItem.txt"),
		write("continue(y/n)?"),
		readChar(Ans),
		Ans='y',nl,
		go1.
	list(3):-
		
		write("Enter Food item name:"),readln(Name),
		consult("foodItem.txt"),
		foodItem(Name,Price,Type,Taste),
		write("Food name :",Name," Price :",Price," Type: ",Type, " Taste: ",Taste),nl,
		
		write("continue(y/n)?"),
		readChar(Ans),nl,
		Ans='y',
		go1.
		
	
	
	
	list(4):-
		write("Enter Price : "),readInt(Price),
		consult("foodItem.txt"),
		foodItem(N,B,S,X),
		B>Price,
		write("Food name :",N," Price :",B," Type: ",S, "Taste",X),nl,fail.
	
	
	list(5):-
		consult("foodItem.txt"),foodItem(N,B,S,X),
		write("Food name :",N," Price :",B," Type: ",S,  " Taste: ",X),nl,fail.
	
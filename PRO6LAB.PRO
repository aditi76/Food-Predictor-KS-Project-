domains
	unique,name,type = symbol
	price = integer
predicates
	food(unique,name,price,type)
	select(integer)
	compare(symbol,symbol)
pass(char)
	start
clauses
start:-
	write("1=enter food item  2=find food under your budget 3=find low-cost Dish"),readint(N),nl,select(N).
	
	select(1):-write("Enter Food from following(dhokla, kadhahalwa, vadapav ): "),readln(S),nl,food(X,S,Y,Z),write(X,":",Y,"rs. type ",Z),nl,fail.
	select(1):-
			write("Do you want to continue(y/n)?"),
			readchar(Ans),
			pass(Ans).
	select(2):-write("Enter Food name and it's maximum price:"),readln(C),readint(D),nl,food(B,C,E,Z),not(D<E),write(B, ":",E,"rs. type ",Z),nl,fail.
	select(2):-
			write("Do you want to continue(y/n)?"),
			readchar(Ans),
			pass(Ans).
	select(3):-write("Enter any two dishes unique Id of Food Item"),readln(F),readln(G),compare(F,G),nl,write("Continue ??(y/n)"),readchar(C),pass(C).
	select(3):-
			write("Do you want to continue(y/n)?"),
			readchar(Ans),
			pass(Ans).
			
	

	compare(F,G):-food(F,_,H,_),food(G,_,I,_),H<I,!,write("low-cost:",F," ",H,"rs");food(G,_,I,_),write("costly:",G," ",I,"rs").

pass('y'):-start.
pass('n'):-nl,write("Thanks for checking"),nl.
food(a,vadapav,20,plain).
food(b,vadapav,30,butter).
food(c,vadapav,40,cheese).

food(d,kadhahalwa,70,plain).
food(e,kadhahalwa,100,dryfruits).

food(f,dhokla,50,white).
food(g,dhokla,60,yellow).


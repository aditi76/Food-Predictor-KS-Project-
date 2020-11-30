domains
item,item_type,taste,min_range,max_range,expected_time=symbol
predicates
food(item,item_type,taste,min_range,max_range,expected_time)
go
rule(integer)
clauses
go:-write("*********OPTIONS********"),nl,
write("1. Dispaly list of all Item"),nl,
write("2. Display list of Spicy Items"),nl,
write("3. Display list of Sweeter Items "),nl,
write("4. Display list of Medium Items "),nl,
write("5. Display List of Punjabi"),nl,
write("6. Display list of Chinese"),nl,

write("7. Display list of South Indian"),nl,
write("8. Display list of Maharashtrian"),nl,
write("9. Display list of Gujarat"),nl,
write("enter your choice :-"),readint(C),nl,rule(C).
rule(1):- food(X,_,_,_,_,_),write(X),nl,fail.
rule(1):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.

rule(2):- food(Y,_,"spicy",_,_,_),write(Y),nl,fail.
rule(2):-

write("Do you want to continue(y/n)?"),
readln(Ans),
Ans="y",
go.

rule(3):- food(Z,_,"sweet",_,_,_),write(Z),nl,fail.
rule(3):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.

rule(4):- food(A,_,"medium",_,_,_),write(A),nl,fail.
rule(4):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.

rule(5):- food(B,"punjabi",_,_,_,_),write(B),nl,fail.
rule(5):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.

rule(6):- food(D,"chinese",_,_,_,_),write(D),nl,fail.
rule(6):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.

rule(7):- food(D,"south_indian",_,_,_,_),write(D),nl,fail.
rule(7):-write("Do you want to continue(y/n)?"),


readln(Ans),
Ans="y",
go.

rule(8):- food(D,"mahashtrian",_,_,_,_),write(D),nl,fail.
rule(8):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.
rule(9):- food(D,"gujarat",_,_,_,_),write(D),nl,fail.
rule(9):-write("Do you want to continue(y/n)?"),

readln(Ans),
Ans="y",
go.


food("manchurian","chinese","spicy","80","180","20").
food("Chinese Bhel","chinese", "medium","100","200","10").
food("Paneer Toofani","punjabi","spicy","130","180","25").
food("Kaju Curry","punjabi","sweet","130","200","20").
food("Idli-Sambhar","south_indian","medium","60","110","30").
food("Paniyaram","south_indian","sweet","110","160","25").
food("vadapav","mahashtrian","spicy","20","40","6").
food("kadhahalwa","punjabi","sweet","70","150","30").
food("dhokla","gujarat","sweet","50","80","15").
	
	


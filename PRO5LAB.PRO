predicates
	start
clauses
	start:-
	write("Enter name of Customer:"),readln(P),nl,
	
	write("Enter Total Price:"),readreal(T),nl,
	write("Enter Voucher in %"),readreal(V),nl,
	
	write("---Your final Bill---"),nl,
	
	X=V/100,DC=T*X,
	write("Customer Name: ",P),nl,
	write("Price: ",T),nl,
	
	write("Discount: ",V),nl,
	TA=T-DC,
	write("Total Amount is: ",TA),nl.
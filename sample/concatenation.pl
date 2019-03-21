conc([],X,X).
conc([H|L1],L2,[H|L3]):-
	conc(L1,L2,L3).

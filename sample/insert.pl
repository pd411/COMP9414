insert(X,[],[X]).
insert(Num,[H1|List],[Num,H1|List]):- Num @< H1, !.
insert(Num,[H1|List],[H1|NewList]):-
	insert(Num,List,NewList).

isort([],[]).
isort([H|List],NewList):-
	isort(List,List2),
	insert(H,List2,NewList).

split([],[],[]).
split([X],[X],[]).
split([H1,H2|BigList],[H1|List1],[H2|List2]):-
	split(BigList,List1,List2).

merge([],X,X).
merge(X,[],X).
merge([H1|Sort1],[H2|Sort2],Sort):- 
	H1 =< H2 -> Sort = [H1|NewL], merge(Sort1,[H2|Sort2],NewL);
	H1 > H2 -> Sort = [H2|NewL], merge([H1|Sort1],Sort2,NewL).


mergeSort([],[]).
mergeSort([X],[X]).
mergeSort([A,B|List],NewList):-
	split([A,B|List],S1,S2),
	mergeSort(S1,L1),
	mergeSort(S2,L2),
	merge(L1,L2,NewList).
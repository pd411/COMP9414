   child_of(mary, steve).
   child_of(mary, anne).
   child_of(alice, anne).
   child_of(alice, steve).
   child_of(jane, steve).
   child_of(leslie, steve).
   female(mary).
   female(alice).
   female(jane).

   sisters(Person1, Person2) :-
      child_of(Person1, Parent1), child_of(Person1, Parent2),
      not(Parent1 = Parent2),
      child_of(Person2, Parent1), child_of(Person2, Parent2),
      female(Person1), female(Person2), not(Person1 = Person2).


s_number(0).
s_number(s(X)) :-
	s_number(X).

minus1(s(X),X).

subtract(X,0,X).
subtract(s(X),s(Y),Z):-
	subtract(X,Y,Z).

value_of(0,0).
value_of(s(X),Y):-
	value_of(X,Z),
	Y is Z+1.
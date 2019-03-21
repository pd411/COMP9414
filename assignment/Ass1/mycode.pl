% First question
% ?- sumsq_neg([1,-6,-4,2,6,8,-1], Sum).
% Sum = 53

sumsq_neg([],0).
sumsq_neg([X|T],R) :- X < 0->  
	sumsq_neg(T,Sum), R is Sum + (X * X);
    X >= 0 ->  
	sumsq_neg(T,Sum), R is Sum.

% Second question
% ?- all_like_all([john,tim],[cricket,hockey]).
% true.
%
% ?- all_like_all([mark,tim],[cricket,football]).
% false.
%
% ?- all_like_all([],[ping_pong]).
% true. 

person_likes(_,[]).
person_likes(X,[H|List]):-
	likes(X,H),
	person_likes(X,List).

all_like_all([],[]).
all_like_all([], _).
all_like_all(_,[]).
all_like_all([H|Who_List], What_List) :- 
	person_likes(H, What_List),
	all_like_all(Who_List, What_List).

% Third question
% sqrt_table(9,6, Result).
% Result = [[9, 3.0], [8, 2.8284271247461903], [7, 2.6457513110645907], [6, 2.449489742783178]].
% ?- sqrt_table(4, 5, Result).
% false.
sqrt_table(N, M, [H|Result]):- N > M, M >= 0 ->
	X is sqrt(N),
	N1 is N - 1,
	H = [N,X],
	sqrt_table(N1, M, Result).

sqrt_table(N, M, Result):- N = M, M > 0 ->
	X is sqrt(N),
	Result = [[N,X]].

% Fourth question
% ?- chop_up([9,10,5,6,7,3,1], Result).
% Result = [[9, 10], [5, 7], 3, 1]
%
% ?- chop_up([1,3,2,3,4], Result).
%Result = [1, 3, [2, 4]]
sequen_list([X],[X],[]).
sequen_list([A,B|List],[A],[B|List]):-
    A + 1 =\= B.
sequen_list([A,B|List],[A|Suc], Rest):-
    A + 1 =:= B ->
    sequen_list([B|List],Suc, Rest).

chop_up([],[]).
chop_up(List, [H|NewList]):-
    sequen_list(List,Suc,Rest),
    length(Suc,N),
    (   N =:= 1 ->
    	[H|_] = Suc;
    	N =:= 2 ->  
    	H = Suc;
    	N > 2 ->  
    	reverse(Suc, Rev_S),
        [A|_] = Suc,
        [B|_] = Rev_S,
        H = [A,B]
    ),
	chop_up(Rest,NewList).

% Fifth question
% ?- tree_eval(2, tree(tree(empty,z,empty),
%  '+',tree(tree(empty,1,empty),
%  '/',tree(empty,z,empty))), Eval).
% Eval = 2.5
%
% ?- tree_eval(5, tree(tree(empty,z,empty),
%  '+',tree(tree(empty,1,empty),
%  '/',tree(empty,z,empty))), Eval).
% Eval = 5.2
tree_eval(Value,tree(empty,X,empty),Eval):-
    X = z ->
    Eval is Value.
tree_eval(_,tree(empty,X,empty),Eval):-
    number(X) ->
    Eval is X.

tree_eval(Value, tree(L, Op, R), Eval):-
    tree_eval(Value, L, LEval),
    tree_eval(Value, R, REval),
    (   Op = '-' ->
    	Eval is LEval - REval;
    	Op = '+' ->  
    	Eval is LEval + REval;
    	Op = '/' ->  
    	(   LEval = 0 ->  !;
    	Eval is LEval / REval);
    	Op = '*' ->  
    	Eval is LEval * REval).

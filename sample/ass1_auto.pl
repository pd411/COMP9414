% Testing for: Assignment 1 - Prolog Programming
% Date: 01/13/2019

% how to run it: 
% $ swipl -s assn1.pl < ass1_tests.pl

% Based on: https://gist.github.com/mohammadg/7d44ed81d779c4081e7965ad7e72ac42
% Based on: https://www.cse.unsw.edu.au/~billw/testing.html

% Q1 Tests
write('*** Question 1 Tests ***'), nl, nl,

write('T1: sumsq_neg([-1, -3, -5, -2, 4, -6, -8, 7], Sum).'), nl,
write('Sum = 139. (Expected Answer)'), nl,
sumsq_neg([-1, -3, -5, -2, 4, -6, -8, 7], Sum), !.

write('T2: sumsq_neg([], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_neg([], Sum), !.

write('T3: sumsq_neg([0], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_neg([0], Sum), !.

write('T4: sumsq_neg([-1], Sum).'), nl,
write('Sum = 1. (Expected Answer)'), nl,
sumsq_neg([-1], Sum), !.

write('T5: sumsq_neg([1], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_neg([1], Sum), !.

write('T6: sumsq_neg([-1, 4], Sum).'), nl,
write('Sum = 1. (Expected Answer)'), nl,
sumsq_neg([-1, 4], Sum), !.

write('T7: sumsq_neg([0, 0, 0], Sum).'), nl,
write('Sum = 0. (Expected Answer)'), nl,
sumsq_neg([0, 0, 0], Sum), !.

write('T8: sumsq_neg([-5, -12, 14, 7], Sum).'), nl,
write('Sum = 169. (Expected Answer)'), nl,
sumsq_neg([-5, -12, 14, 7], Sum), !.

write('T9: sumsq_neg([-5, 4, 0, -18, 7], Sum).'), nl,
write('Sum = 349. (Expected Answer)'), nl,
sumsq_neg([-5, 4, 0, -18, 7], Sum), !.

write('T10: sumsq_neg([1, -6, -4, 2, 6, 8, -1], Sum).'), nl,
write('Sum = 53. (Expected Answer)'), nl,
sumsq_neg([1, -6, -4, 2, 6, 8, -1], Sum), !.


% Q2 Tests
% Keep the provided data in assn_one.pl

write('*** Question 1 Tests ***'), nl, nl,

write('T1: all_like_all([john, tim], [cricket, hockey]).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([john, tim], [cricket, hockey]), !.

write('T2: all_like_all([mark, tim], [cricket, football]).'), nl,
write('false. (Expected Answer)'), nl,
all_like_all([mark, tim], [cricket, football]), !.

write('T3: all_like_all([], [ping_pong]).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([], [ping_pong]), !.

write('T4: all_like_all([codd], []).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([codd], []), !.

write('T5: all_like_all([ann, mark], [tennis]).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([ann, mark], [tennis]), !.

write('T6: all_like_all([], []).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([], []), !.

write('T7: all_like_all([john, tim, ann, mark], [cricket, hockey]).'), nl,
write('false. (Expected Answer)'), nl,
all_like_all([john, tim, ann, mark], [cricket, hockey]), !.

write('T8: all_like_all([john, tim, mark], [cricket]).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([john, tim], [cricket, hockey]), !.

write('T9: all_like_all([cricket, hockey], [john, tim]).'), nl,
write('false. (Expected Answer)'), nl,
all_like_all([cricket, hockey], [john, tim]), !.

write('T10: all_like_all([mark], [football]).'), nl,
write('true. (Expected Answer)'), nl,
all_like_all([mark], [football]), !.

% Q3 Tests
write('*** Question 3 Tests ***'), nl, nl,

write('T1: sqrt_table(9, 6, Restlt).'), nl,
write('Result = [[9, 3.0], [8, 2.8284271247461903], [7, 2.6457513110645907], [6, 2.449489742783178]]. (Expected Answer).'), nl,
sqrt_table(9, 6, Result), !.

write('T2: sqrt_table(4, 5, Restlt).'), nl,
write('false. (Expected Answer)'), nl,
sqrt_table(4, 5, Result),! .

write('T3: sqrt_table(0, 0, Restlt).'), nl,
write('Result = [[0, 0.0]]. (Expected Answer)'), nl,
sqrt_table(0, 0, Result), !.

write('T4: sqrt_table(16, 16, Restlt).'), nl,
write('Result = [[16, 4.0]]. (Expected Answer)'), nl,
sqrt_table(16, 16, Result), !.

write('T5: sqrt_table(-16, -16, Restlt).'), nl,
write('false. (Expected Answer)'), nl,
sqrt_table(-16, -16, Result), !.

write('T6: sqrt_table(7, 4, Restlt).'), nl,
write('Result = [[7, 2.6457513110645907], [6, 2.449489742783178], [5, 2.23606797749979], [4, 2.0]]. (Expected Answer)'), nl,
sqrt_table(7, 4, Result), !.

write('T7: sqrt_table(8000, 7999, Restlt).'), nl,
write('Result = [[8000, 89.44271909999159], [7999, 89.4371287553441]]. (Expected Answer)'), nl,
sqrt_table(8000, 7999, Result), !.

write('T8: sqrt_table(10, 5, Result).'), nl,
write('Result = [[10, 3.1622776601683795], [9, 3.0], [8, 2.8284271247461903], [7, 2.6457513110645907], [6, 2.449489742783178], [5, 2.23606797749979]]. (Expected Answer).'), nl,
sqrt_table(10, 5, Result), !.

% Q4 Tests
write('*** Question 4 Tests ***'), nl, nl,

write('T1: chop_up([9, 10, 5, 6, 7, 3, 1], Result).'), nl,
write('Result = [[9, 10], [5, 7], 3, 1]. (Expected Answer)'), nl,
chop_up([9, 10, 5, 6, 7, 3, 1], Result), !.

write('T2: chop_up([1, 3, 2, 3, 4], Result).'), nl,
write('Result = [1, 3, [2, 4]]. (Expected Answer)'), nl,
chop_up([1, 3, 2, 3, 4], Result), !.

write('T3: chop_up([], Result).'), nl,
write('Result = []. (Expected Answer)'), nl,
chop_up([], Result), !.

write('T4: chop_up([8], Result).'), nl,
write('Result = [8]. (Expected Answer)'), nl,
chop_up([8], Result), !.

write('T5: chop_up([3, 4, 5, -2, -1, 0, 5, 7, 8], Result).'), nl,
write('Result = [[3, 5], [-2, 0], 5, [7, 8]]. (Expected Answer)'), nl,
chop_up([3, 4, 5, -2, -1, 0, 5, 7, 8], Result), !.

write('T6: chop_up([-4], Result).'), nl,
write('Result = [-4]. (Expected Answer)'), nl,
chop_up([-4], Result), !.


% Q5 Tests
write('*** Question 5 Tests ***'), nl, nl,

write('T1: tree_eval(2, tree(tree(empty, z, empty), \'+\', tree(tree(empty, 1, empty), \'/\', tree(empty, z, empty))), Eval).'), nl,
write('Eval = 2.5. (Expected Answer)'), nl,
tree_eval(2, tree(tree(empty, z, empty), '+', tree(tree(empty, 1, empty), '/', tree(empty, z, empty))), Eval), !.

write('T2: tree_eval(5, tree(tree(empty, z, empty), \'+\', tree(tree(empty, 1, empty), \'/\', tree(empty, z, empty))), Eval).'), nl,
write('Eval = 5.2. (Expected Answer)'), nl,
tree_eval(5, tree(tree(empty, z, empty), '+', tree(tree(empty, 1, empty), '/', tree(empty, z, empty))), Eval), !.

write('T3: tree_eval(-1, tree(tree(empty, z, empty), \'*\', tree(empty, 20, empty)), Eval).'), nl,
write('Eval = -20. (Expected Answer)'), nl,
tree_eval(-1, tree(tree(empty, z, empty), '*', tree(empty, 20, empty)), Eval), !.

write('T4: tree_eval(1, tree(tree(tree(empty, z, empty), \'+\', tree(empty, z, empty)), \'+\', tree(tree(empty, z, empty), \'+\', tree(empty, z, empty))), Eval).'), nl,
write('Eval = 4. (Expected Answer)'), nl,
tree_eval(1, tree(tree(tree(empty, z, empty), '+', tree(empty, z, empty)), '+', tree(tree(empty, z, empty), '+', tree(empty, z, empty))), Eval), !.

write('T5: tree_eval(2, tree(tree(tree(tree(empty, z, empty), \'+\', tree(empty, 5, empty)), \'*\', tree(tree(empty, 10, empty), \'/\', tree(empty, z, empty))), \'+\', tree(tree(tree(empty, 2, empty), \'*\', tree(empty, 4, empty)), \'-\', tree(tree(empty, 9, empty), \'/\', tree(empty, 3, empty)))), Eval).'), nl,
write('Eval = 40. (Expected Answer)'), nl,
tree_eval(2, tree(tree(tree(tree(empty, z, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, 10, empty), '/', tree(empty, z, empty))), '+', tree(tree(tree(empty, 2, empty), '*', tree(empty, 4, empty)), '-', tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)))), Eval), !.

write('T6, tree_eval(3, tree(tree(tree(tree(empty, z, empty), \'*\', tree(tree(empty, z, empty), \'*\', tree(empty, 2, empty))), \'+\', tree(tree(empty, 99, empty), \'-\', tree(empty, 2, empty))), \'+\', tree(tree(tree(tree(empty, 4, empty), \'+\', tree(empty, 5, empty)), \'*\', tree(tree(empty, z, empty), \'/\', tree(empty, 1, empty))), \'-\', tree(tree(tree(empty, 9, empty), \'/\', tree(empty, 3, empty(), \'+\', tree(empty, z, empty)))), Eval).'), nl,
write('Eval = 136. (Expected Answer)'), nl,
tree_eval(3, tree(tree(tree(tree(empty, z, empty), '*', tree(tree(empty, z, empty), '*', tree(empty, 2, empty))), '+', tree(tree(empty, 99, empty), '-', tree(empty, 2, empty))), '+', tree(tree(tree(tree(empty, 4, empty), '+', tree(empty, 5, empty)), '*', tree(tree(empty, z, empty), '/', tree(empty, 1, empty))), '-', tree(tree(tree(empty, 9, empty), '/', tree(empty, 3, empty)), '+', tree(empty, z, empty)))), Eval), !.

write('*** End Of Tests ***'), nl, nl.

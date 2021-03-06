%% 1.01 (*) Find the last element of a list.
%% Example:
%% ?- my_last(X,[a,b,c,d]).
%% X = d
last(X, [X]).
last(X, [_|T]) :- last(X,T).

%% 1.02 (*) Find the last but one element of a list.
last_but_one(X, [X,_]).
last_but_one(X, [_|T]) :- last_but_one(X, T).

%% 1.03 (*) Find the K'th element of a list.
%% The first element in the list is number 1.
%% Example:
%% ?- element_at(X,[a,b,c,d,e],3).
%% X = c
element_at(X, [X|_], 1).
element_at(X, [_|T], N) :- element_at(X, T, N1), N is N1 + 1.

%% 1.04 (*) Find the number of elements of a list.
number_of_elements([], 0).
number_of_elements([_|T], N) :- number_of_elements(T, N1), N is N1 + 1.

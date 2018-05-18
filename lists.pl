%% 1.01 (*) Find the last element of a list.
%% Example:
%% ?- my_last(X,[a,b,c,d]).
%% X = d
last(X, [X]).
last(X, [_|T]) :- last(X,T).

%% 1.02 (*) Find the last but one element of a list.
last_but_one(X, [X,_]).
last_but_one(X, [_|T]) :- last_but_one(X, T).
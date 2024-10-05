% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Shaghayegh Dehghanisanij
%%%%% NAME: Theresa Killam
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the already included comment lines below
%

%%%%% SECTION: listShift
%%%%% Put your rules for listShift and any helper predicates below


helper(next(Head, nil), [Head]).

helper(next(Head, Tail), List) :- 
    List is [Head|Y], helper(next(Tail, X), List).

/**

helper(next(7, next(1, nil)), List).
next(7, next(1, nil)).

1. next(5,  next(0, next(9, next(7, next(1, nil)))))'

2. next(0, next(9, next(7, next(1, nil))))

**/

/**
next(Head, Tail) :- not(Tail = nil), next()
**/
nextHelper(Head, nil) :-
    [Head].

% Base case: list has one element
listShift(List, 0, List).

listShift([H | T], V, Result) :-
    NewV is V - 1,
    shifter([H], T, NewList),
    listShift(NewList, NewV, Result).


/**
newList([1],[2,3], Result) --> [2,3,1]
**/

shifter([X],[T], [T,X]).
shifter([X], [H|T], [H|Y]) :- shifter([X],T,Y). 

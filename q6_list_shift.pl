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


% NEXT to list
next_to_list(nil, []).
next_to_list(next(H, T), [H|List]) :-
    next_to_list(T, List).

% list to NEXT
list_to_next([], nil).
list_to_next([H|T], next(H, Next)) :-
    list_to_next(T, Next).

% Get the length of list
list_length([], 0).
list_length([_|T], L) :-
    list_length(T, L1),
    L is L1 + 1.


% Base case: list has one element
listShiftHelper(List, 0, List).


% Case 2: Shift >= len list
listShiftHelper(List, V, List) :-
    list_length(List, Len),
    V >= Len.

% case 3: Shift < len list
listShiftHelper([H | T], V, Result) :-
    NewV is V - 1,
    shifter([H], T, NewList),
    listShiftHelper(NewList, NewV, Result).


shifter([X],[T], [T,X]).
shifter([X], [H|T], [H|Y]) :- shifter([X],T,Y).


% final predicate
% conver NEXT to list => perform SHIFT => conver list to NEXT
listShift(Next, V, ResultNext) :-
    next_to_list(Next, List),
    listShiftHelper(List, V, ShiftedList),
    list_to_next(ShiftedList, ResultNext).



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

%%%%% SECTION: alternatePlusMinus
%%%%% Put your rules for alternatePlusMinus and any helper predicates below

% if there are no elements in the list, the sum is 0
alternatePlusMinus([], 0).

% if there is one element in the list, the sum is that element
alternatePlusMinus([X], X).

% if there are two elements in the list, the sum is the total of those two elements
alternatePlusMinus([X,Y], Sum) :- Sum is X+Y.


alternatePlusMinus([H|List], Total) :- elementsToAdd(List, Sum), elementsToSubtract(List,Difference), Total is H + Sum - Difference.

elementsToAdd([X,Y], X).
elementsToAdd([X,Y|Rest], Sum) :- elementsToAddHelper(Rest,X,Sum).
elementsToAddHelper([X], Sum, Total) :- Total is X + Sum.
elementsToAddHelper([X,Y], Sum, Total) :- Total is X + Sum.
elementsToAddHelper([X,Y|Rest], Sum, Total) :- Z is X + Sum, elementsToAddHelper(Rest,Z,Total).

elementsToSubtract([X,Y], Y).
elementsToSubtract([X,Y|Rest], Sum) :- elementsToSubtractHelper(Rest,Y,Sum).
elementsToSubtractHelper([X], Sum, Total) :- Total is Sum.
elementsToSubtractHelper([X,Y], Sum, Total) :- Total is Y + Sum.
elementsToSubtractHelper([X,Y|Rest], Sum, Total) :- Z is Y + Sum, elementsToSubtractHelper(Rest,Z,Total).

/* TESTS BELOW

alternatePlusMinus([1], 1). --> works
alternatePlusMinus([1], X). --> works: X = 1
alternatePlusMinus([1,2], X). --> works: X = 3
alternatePlusMinus([1, 2, 3], 0). --> works
alternatePlusMinus([1, 2, -3], X). --> works X = 6
alternatePlusMinus([1, 2, 3, 4], X). --> works X = 4
alternatePlusMinus([1, 2, 3, 4, 5], X). --> works X = -1
alternatePlusMinus([5,  6,   -1,    -2,   7,  8,  9], Z).
                    5 + 6 - (-1) + (-2) - 7 + 8 - 9 = 2.

*/
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


% Base case: NO SHIFT
listShift(List, 0, List).

% Case 2: If SHIFT > LENGTH
listShift(List, V, List) :-
    lengthOfList(List, Length),
    V >= Length.

% Case 3: 0 < V < Length
listShift(next(Head, Tail), V, Result) :-
    V > 0,
    lengthOfList(next(Head, Tail), Length),
    V < Length,
    extractFirstV(next(Head, Tail), V, Extracted, Remaining),
    appendAtEnd(Remaining, Extracted, Result).

% Base case: NO extract, List is empty, remaining unchanged
extractFirstV(List, 0, nil, List).

% Extract V elements , keep goign till V is zero
extractFirstV(next(Head, Tail), V, next(Head, ExtractedTail), Remaining) :-
    V > 0,
    V1 is V - 1,
    extractFirstV(Tail, V1, ExtractedTail, Remaining).


% Base case: Append nil
appendAtEnd(nil, List, List).

% Append to end of list
appendAtEnd(next(Head, Tail), List, next(Head, ResultTail)) :-
    appendAtEnd(Tail, List, ResultTail).


lengthOfList(nil, 0).
lengthOfList(next(_, Tail), Length) :-
    lengthOfList(Tail, TailLength),
    Length is TailLength + 1.


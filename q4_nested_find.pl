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

%%%%% SECTION: nestedLists
%%%%% Put your rules for nestedFindDepth, nestedFindIndex, and any helper predicates below

% Base case: Item is head
nestedFindDepth([Head|_], Item, 0) :-
    Item = Head.

% Case 2: Head is a list
nestedFindDepth([Head|Tail], Item, Depth) :-
    is_list(Head),
    nestedFindDepth(Head, Item, DepthInSubList),  % check inside head
    Depth is DepthInSubList + 1.

% Case 3: Item in not head, so we go to the tail
nestedFindDepth([_|Tail], Item, Depth) :-
    nestedFindDepth(Tail, Item, Depth).

% Case 4: Item found but not in list
nestedFindDepth(Item, Item, 0).


% Base case: Item is head
nestedFindIndex([Head|_], Item, 0, 0) :-
    Head = Item.

% Case 2: Head is a list
nestedFindIndex([Head|_], Item, Depth, 0) :-
    is_list(Head),
    nestedFindDepth(Head, Item, D),  % Use nestedFindDepth to find the depth within the head.
    Depth is D + 1.

% Case 3: Item in not head, so we go to the tail
nestedFindIndex([_|Tail], Item, Depth, Index) :-
    nestedFindIndex(Tail, Item, Depth, NewIndex),
    Index is NewIndex + 1.


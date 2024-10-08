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

% Base case: Item matches and Depth is 0 (only for non-lists)
nestedFindDepth(Item, Item, 0) :-
    not(is_list(Item)).

% Case 1: head is not a list
nestedFindDepth([Head|_], Item, 0) :-
    Item = Head.

% Case 2: head is a list
nestedFindDepth([Head|_], Item, Depth) :-
    is_list(Head),
    nestedFindDepth(Head, Item, SubDepth),
    Depth is SubDepth + 1.

% Case 3: not in head, then go to tail
nestedFindDepth([_|Tail], Item, Depth) :-
    nestedFindDepth(Tail, Item, Depth).

% Case 4: Item is not a list but matches directly
nestedFindDepth(Item, Item, 0) :-
    not(is_list(Item)).



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

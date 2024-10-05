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


% if the head is the item, the depth should be 0
nestedFindDepth([H|Tail], Item, Depth) :- H = Item, Depth = 0. 

% if the head is a list, make the depth 1 and use a helper predicate
nestedFindDepth([H|Tail], Item, Depth) :- is_list(H), countDepth(H, Item, 1, Depth).

% if the head is not a list and not the item, then use recursion and put the tail in
nestedFindDepth([H|Tail], Item, Depth) :- not (is_list(H)), not (H = Item), nestedFindDepth(Tail, Item, Depth).



/*** THE HELPER PREDICATE ***/
% if the head is the item, then depth is equal to the layer
countDepth([H|Tail], Item, Layer, Depth) :- H = Item, Depth = Layer.

% if the head is a list, use recursion and increase the layer by 1
countDepth([H|Tail], Item, Layer, Depth) :- is_list(H), countDepth(H, Item, Layer + 1, Depth).

% if the head is not a list or the item, put it back into nestedFindDepth
countDepth([H|Tail], Item, Layer, Depth) :- not (is_list(H)), not (H = Item), nestedFindDepth(Tail, Item, Depth). 



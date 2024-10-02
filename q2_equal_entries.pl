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

%%%%% SECTION: equalEntries
%%%%% Put your rules for equalEntries below

equalEntries([X], [X], [true]).
equalEntries([X], [Y], [false]) :- not (X = Y).
equalEntries([H|Tail1], [H|Tail2], [true|Rest]) :- equalEntries(Tail1, Tail2, Rest).
equalEntries([H1|Tail1], [H2|Tail2], [false|Rest]) :- not (H1 = H2), equalEntries(Tail1, Tail2, Rest).

/*
% equalEntries([1], [1], [true]).  --> works
% equalEntries([1], [2], [true]).  --> works
% equalEntries([1], [2], [false]).  --> works

% equalEntries([a,b,c], [a,b,c], X). --> works
% equalEntries([a, b, [c], d, [e, f, g]], [1, b, c, d, [e, f, g]], [false, true, false, true, true]) --> works.
*/
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
%%%%% Below you can find the KB given in the assignment PDF. You may edit it as you wish for testing
%%%%% It will be ignored in the tests
%%%%% Do not put any part of the KB in the robocup section below. That section, should only
%%%%% have statements for the canPass, canScore, and any helper predicates needed for computing those
robot(r1).     robot(r2).     robot(r3).
robot(r4).     robot(r5).     robot(r6).
hasBall(r3).
pathClear(r1, net).    pathClear(r2, r1).    pathClear(r3, r2).
pathClear(r3, net).    pathClear(r3, r1).    pathClear(r3, r4).
pathClear(r4, net).    pathClear(r1, r5).    pathClear(r5, r6).

%%%%% SECTION: robocup
%%%%% Put your rules for canPass, canScore, and any helper predicates below


canPass(R1, R2, M, [H,T]) :- R1 = H, R2 = T, robot(R1), robot(R2), pathClear(R1, R2), M>=1.
canPass(R1, R2, M, [H,S|Rest]) :- robot(R1), robot(R2), robot(R3), pathClear(R1, R3), R1 = H, R3 = S, canPass(R3, R2, M - 1, [R3|Rest]).


canScore(R,M, Path) :- robot(R),  hasBall(R), pathClear(R,net), M >= 1, Path = [R,net].
canScore(R,M, Path) :- robot(R), robot(R1), hasBall(R1), pathClear(R,net), canPass(R1, R, M, Rest), M>1, addToEnd(Rest, Path).

addToEnd([H],[H,net]).
addToEnd([H|T], [H|Y]) :- addToEnd(T, Y). 

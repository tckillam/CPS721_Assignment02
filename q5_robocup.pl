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

% there is a path between R1 and R2
canPassHelper(R1, R2, M, [H,T], Visited) :- R1 = H, R2 = T, robot(R1), robot(R2), not(robotChecker(R1, Visited)), symmetry(R1, R2),M >= 1.

% there are robots that can pass between R1 and R2 such that, R1 --> R --> R2
canPassHelper(R1, R2, M, [H,S|Rest], Visited) :-
    M > 1,  robot(R1),robot(R2),robot(R3),not(R1=R2), not(robotChecker(R1, Visited)), symmetry(R1, R3),R1 = H, R3 = S,
    canPassHelper(R3, R2, M - 1, [R3|Rest], [R1|Visited]).

% use the canPassHelper to make sure robots are not repeated
canPass(R1, R2, M, Path) :- canPassHelper(R1, R2, M, Path , []).

% R has the ball and there is a path clear between R and the net
canScore(R,M, Path) :- robot(R), hasBall(R), M >= 1, Path = [R,net].

% robot R1 has the ball and can pass to R with a clear path between them and R can score on net
canScore(R,M, Path) :- robot(R), robot(R1), hasBall(R1), pathClear(R,net), canPass(R1, R, M, Rest), M>1, addToEnd(Rest, Path).

% checks to see if a robot has a clear path between themselves and the net
addToEnd([H],[H,net]).
addToEnd([H|T], [H|Y]) :- addToEnd(T, Y). 

% makes sure the ball can be passed symmetric
symmetry(R1,R2) :- pathClear(R1,R2).
symmetry(R1,R2) :- pathClear(R2,R1).

% checks if the robot is in the list
robotChecker(R,[R|T]).
robotChecker(R,[H|T]) :- robotChecker(R,T).

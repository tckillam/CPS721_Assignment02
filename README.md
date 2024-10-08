QUESTION 2:
- equalEntries([1], [1], [true]).
- -> yes
- equalEntries([1], [2], [true]).
- -> no
- equalEntries([1], [2], [false]).
- -> yes
- equalEntries([a,b,c], [a,b,c], X).
- -> yes
- equalEntries([a, b, [c], d, [e, f, g]], [1, b, c, d, [e, f, g]], [false, true, false, true, true]).
- -> yes
- equalEntries([a,b,c], [a,b,d], X).
- -> [true,true,false]
- equalEntries([a, b, c, d, e], [1, 2, c, 4, 5], [false, false, true, false, false]).
-  -> yes
- equalEntries([a, b, [c], d, [e, f, g]], [1, b, c, d], X).
-  -> no
- equalEntries([1], [1 , 2], X).
-  -> no

QUESTION 3:

- alternatePlusMinus([1], 1).
- --> yes
- alternatePlusMinus([1], X).
- --> works: X = 1
- alternatePlusMinus([1,2], X).
-  --> works: X = 3
- alternatePlusMinus([1, 2, 3], 0).
-  --> works
- alternatePlusMinus([1, 2, -3], X).
-  --> works X = 6
- alternatePlusMinus([1, 2, 3, 4], X).
-  --> works X = 4
- alternatePlusMinus([1, 2, 3, 4, 5], X). 1 + 2 -3 + 4 - 5
-  --> works X = -1
- alternatePlusMinus([5,  6,   -1,    -2,   7,  8,  9], Z).
  + 5 + 6 - (-1) + (-2) - 7 + 8 - 9 = 2.

QUESTION 4:
- nestedFindDepth([[a, b], [[c]], d], [a, b], D).
- D = 0
- nestedFindDepth([[a, b], [[c]], d], c, 2).
- yes
- nestedFindDepth([[a, b], [[c]], d], b, D).
- Yes with X = 1
- nestedFindDepth([[a, b , e , f], [[c , g]], d , h ,[[[i]]] , j ], X, 2).
- X=c and X=g and X=[i]
- nestedFindDepth([[a, b , e , f], [[c , g]], d , h ,[[[i]]] , j ], X, 1).
- X=a and X=b and X=e and X=f anf X=[c,g] and X=[[i]]



QUESTION 5:
- nestedFindIndex(a, E, X, Y).
- no
- nestedFindIndex([[a, b], [[c]], d], b, 1, 0).
- yes
- nestedFindIndex([[a, b], [[c]], d], c, D, Y).
- Yes with D = 2 and Y = 1
- nestedFindIndex([[a, b], [[c]], d], E, D, 2).
- Yes with E = d and D = 0
- nestedFindIndex([[a, b , e , f], [[c , g]], d , h ,[[[i]]] , j ], Item , Depth , Index).
- nestedFindIndex([[a, b , e , f], [[c , g]], d , h ,[[[i]]] , j ], Item , 2 , Index).
- Index = c Item = c ? ;
- Index = 1 Item = g ? ;
- Index = 4 Item = [i] ? ;


QUESTION 6:
 - listShift(next(7, next(1, next(5, next(0, next(9, nil))))), 4, X).
 - listShift((nil) , 4 , X).
 - listShift(nil , 1 , X).
 - listShift((2, nil) , 0 , X).
 - listShift(next(2, nil) , 1 , X).
 - listShift(next(nil, nil) , 10 , X).


QUESTION 7:
- preorder(none, X).
- Tree = tree3(a, none, none, none), preorder(Tree, X).
- Tree = tree3(a, 
             tree3(b, none, none, none), 
             tree3(c, none, none, none), 
             tree3(d, none, none, none)),
preorder(Tree, X).
- Tree = tree3(a, 
             tree3(b, 
                   tree3(e, none, none, none), 
                   tree3(f, none, none, none), 
                   none), 
             tree3(c, none, none, none), 
             tree3(d, none, none, none)),
preorder(Tree, X).


Tree = tree3(a,  tree3(b, tree3(e, none, none, none), tree3(f, none, none, none), none), tree3(c, none, none, none), tree3(d, tree3(g, none, none, tree3(h, none, none, none)), none, none )), preorder(Tree, X). -->
X = X = next(a, next(b, next(e, next(f, next(c, next(d, next(g, next(h, nil)))))))).
![image](https://github.com/user-attachments/assets/5578ec9b-fe0c-4ce7-96dd-b21be309997f)


- Tree = tree3(16, 
             tree3(10, 
                   tree3(3, none, none, none),  
                   none,
                   tree3(6, none, none, none)), 
             tree3(2,
                   tree3(15, 
                         tree3(20, none, none, none), none, none), 
                   tree3(1, 
                         none, none, tree3(30, none, none, none)),  
                   tree3(8, none, none, none)), 
             tree3(12, 
                   none, none, tree3(33, none, none, none))),
preorder(Tree, X).
![image](https://github.com/user-attachments/assets/7fa5ecf0-162f-4568-a6b1-f8f35e8d1737)




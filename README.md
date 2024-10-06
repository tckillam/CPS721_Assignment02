QUESTION 2:
- equalEntries([1], [1], [true]).
- equalEntries([1], [2], [true]). 
- equalEntries([1], [2], [false]). 
- equalEntries([a,b,c], [a,b,c], X).
- equalEntries([a, b, [c], d, [e, f, g]], [1, b, c, d, [e, f, g]], [false, true, false, true, true]).
- equalEntries([a,b,c], [a,b,d], X).
- equalEntries([a, b, c, d, e], [1, 2, c, 4, 5], [false, false, true, false, false]).
- equalEntries([a, b, [c], d, [e, f, g]], [1, b, c, d], X).
- equalEntries([1], [1 , 2], X).





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




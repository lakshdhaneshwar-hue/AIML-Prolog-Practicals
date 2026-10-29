% Student Course Database
student(rahul, cse).
student(amit, aiml).
student(priya, cse).

course(cse, 'Data Structures').
course(aiml, 'Artificial Intelligence').

enrolled(X, Y) :- student(X, Branch), course(Branch, Y).
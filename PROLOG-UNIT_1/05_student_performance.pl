% Student Performance Database
marks(rahul, 85).
marks(amit, 65).
marks(priya, 92).

performance(Name, 'Excellent') :- marks(Name, M), M >= 90.
performance(Name, 'Good') :- marks(Name, M), M >= 70, M < 90.
performance(Name, 'Average') :- marks(Name, M), M >= 50, M < 70.
performance(Name, 'Needs Improvement') :- marks(Name, M), M < 50.
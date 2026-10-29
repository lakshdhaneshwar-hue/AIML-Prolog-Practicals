% College Timetable
class(monday, 10, 'Data Structures').
class(monday, 11, 'AIML').
class(tuesday, 10, 'Database Management').

schedule(Day, Time, Subject) :- class(Day, Time, Subject).
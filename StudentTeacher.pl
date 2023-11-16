student(john, math).
student(alice, physics).
student(bob, chemistry).
student(mary, math).
student(susan, physics).

teacher(prof_smith, math).
teacher(prof_jones, physics).
teacher(prof_doe, chemistry).
teaches_subject(Teacher, Subject) :-
    teacher(Teacher, Subject).

takes_subject(Student, Subject) :-
    student(Student, Subject).
symptom(john, fever).
symptom(john, cough).
symptom(jane, headache).
symptom(jane, fatigue).
disease(fever, flu).
disease(cough, cold).
disease(headache, stress).
disease(fatigue, anemia).
diagnosis(Person, Disease) :-
    symptom(Person, Symptom),
    disease(Symptom, Disease).

diet_suggestion(high_blood_pressure, low_salt).
diet_suggestion(diabetes, low_sugar).
diet_suggestion(high_cholesterol, low_fat).
diet_suggestion(heart_disease, heart_healthy).
suggest_diet(Person, Disease, Diet) :-
    diet_suggestion(Disease, Diet),
    write('For '), write(Person), write(' with '), write(Disease),
    write(', it is recommended to follow a '), write(Diet), write(' diet.'), nl.

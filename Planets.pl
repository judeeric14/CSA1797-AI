planet(mercury, 0.33, 4879).
planet(venus, 4.87, 12104).
planet(earth, 5.97, 12742).
planet(mars, 0.642, 6779).
planet(jupiter, 1898, 139820).
planet(saturn, 568, 116460).
planet(uranus, 86.8, 50724).
planet(neptune, 102, 49244).
mass_of_planet(Planet, Mass) :-
    planet(Planet, Mass, _).
diameter_of_planet(Planet, Diameter) :-
    planet(Planet, _, Diameter).
all_planets(Planets) :-
    findall(Planet, planet(Planet, _, _), Planets).

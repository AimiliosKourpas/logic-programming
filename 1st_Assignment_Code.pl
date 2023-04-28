% The family that we are asked to implement from the tree diagram.
family(
    person(tom, fox, date(7, may, 1950), works(bbc, 15200)),
    person(ann, fox, date(9, may, 1951), unemployed),
    [person(pat, fox, date(5, may, 1973), unemployed),
    person(jim, fox, date(5, may, 1973), unemployed)]
    ).

% 2 more examples of families.
family(
    person(tommy, william, date(13, august, 1962), works(amazon, 17900)),
    person(johny, william, date(22, november, 1961), works(mymarket, 9750)),
    [person(jonnson, william, date(18, may, 1999), student),
    person(jason, william, date(11, december, 1993), student)]
    ).

family(
    person(smith, jackson, date(23, july, 1961), unemployed),
    person(karen, jackson, date(2, november, 1959), works(skroutz, 17500)),
    [person(michael, jackson, date(18, octomber, 1999), student),
    person(nick, jackson, date(7, august, 1990), works(tesla, 19800)),
    person(george , jackson, date(10, july, 1973), unemployed),
    person(elisabet, jackson, date(6, june, 1999), unemployed)]
    ).

child(X):- family(_, _, Children), member(X, Children).
dateofbirth(person(_,_,Date,_),Date).


children_born_in_specific_year(X,Y):-child(X),dateofbirth(X,date(_,_,Y)). 

slow_max(L, Max) :-
   select(Max, L, Rest), \+ (member(E, Rest), E > Max).
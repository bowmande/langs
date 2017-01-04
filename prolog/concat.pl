concat([], List, List).
concat([Head|Tail1], List, [Head|Tail2]) :- concat(Tail1, List, Tail2).

reverl([], []).
reverl([Head|Tail], R) :- reverl(Tail, RevTail), append(RevTail, [Head], R).

smallest([H|[]], H).
smallest([H,K|T], Smallest) :- H =< K, smallest([H|T], Smallest).
smallest([H,K|T], Smallest) :- H > K, smallest([K|T], Smallest).

sorted([], []).
sorted([H|T], Sorted) :- sorted(T, Rest), insort(H, Rest, Sorted).

insort(Element, [], [Element]).
insort(Element, [H|T], [Element,H|T]) :- Element =< H.
insort(Element, [H|T], [H|NewTail]) :- Element > H, insort(Element, T, NewTail).

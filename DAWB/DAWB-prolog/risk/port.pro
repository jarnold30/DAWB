% Copyright

implement port
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    starts : start*.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        starts = [].

    hasStart(Start) :-
        list::isMember(Start, starts).
    addStart(Start) :-
        starts := list::append([Start], starts).

end implement port

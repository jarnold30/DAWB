% Copyright

implement agent
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    conditions : setM{cond}.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        conditions := [].

end implement agent

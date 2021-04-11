% Copyright

implement asset
    open core, common

facts
    rDiagram : rDiagram.
    name : name.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name.

end implement asset

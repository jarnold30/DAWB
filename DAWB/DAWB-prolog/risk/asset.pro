% Copyright

implement asset
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    number : string.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        number = '1'.

end implement asset

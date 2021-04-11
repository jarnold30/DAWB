% Copyright

implement container
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    functions : setM{function*}.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        functions := setM_redBlack::new().

end implement container

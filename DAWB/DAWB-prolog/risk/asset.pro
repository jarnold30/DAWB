% Copyright

implement asset
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    number : string.
    policies : setM{cond}.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        number = '1',
        policies = setM_redBlack::new().

end implement asset

% Copyright

implement container
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    effects : setM{effect}.
    ports : setM{port}.
    assets : setM{asset}.
    conditions : setM{cond}.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        effects := setM_redBlack::new(),
        ports := setM_redBlack::new(),
        assets := setM_redBlack::new(),
        conditions = setM_redBlack::new().

end implement container

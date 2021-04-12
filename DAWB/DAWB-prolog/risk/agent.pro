% Copyright

implement agent
    open core, common

facts
    rDiagram : rDiagram.
    name : name.
    conditions : setM{cond}.
    ports : setM{port}.
    legitimateAccesses : setM{cond}.

clauses
    new(RDiagram, Name) :-
        rDiagram := RDiagram,
        name := Name,
        conditions := setM_redBlack::new(),
        ports := setM_redBlack::new(),
        legitimateAccesses := setM_redBlack::new().

end implement agent

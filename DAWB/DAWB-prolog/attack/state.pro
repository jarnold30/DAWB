% Copyright

implement state inherits slot
    open core

facts
    postConditions : setM{cond}.

clauses
    new(ADiagram, Name) :-
        slot::new(ADiagram, Name),
        myType := "state",
        postConditions := setM_redBlack::new().

end implement state

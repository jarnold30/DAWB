% Copyright

implement task inherits slot
    open core

facts
    preConditions : setM{cond}.

clauses
    new(ADiagram, Name) :-
        slot::new(ADiagram, Name),
        myType := "task",
        preConditions := setM_redBlack::new().

end implement task

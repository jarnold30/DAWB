% Copyright

implement start inherits slot
    open core

clauses
    new(ADiagram, Name) :-
        slot::new(ADiagram, Name),
        myType := "start".

end implement start

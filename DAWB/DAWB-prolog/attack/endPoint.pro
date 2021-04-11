% Copyright

implement endPoint inherits slot
    open core

clauses
    new(ADiagram, Name) :-
        slot::new(ADiagram, Name),
        myType := "endPoint".

end implement endPoint

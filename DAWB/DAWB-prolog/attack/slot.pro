% Copyright

implement slot
    open core, common

facts
    aDiagram : aDiagram.
    name : name.
    myType : name.

clauses
    new(ADiagram, Name) :-
        aDiagram := ADiagram,
        name := Name.

end implement slot

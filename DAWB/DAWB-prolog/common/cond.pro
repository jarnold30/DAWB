% Copyright

implement cond
    open core

facts
    diagram : diagram.
    name : name.

clauses
    new(Diagram, Name) :-
        Diagram := Diagram,
        name := Name.

end implement cond

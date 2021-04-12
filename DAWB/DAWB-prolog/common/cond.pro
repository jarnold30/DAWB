% Copyright

implement cond
    open core, common

facts
    diagram : diagram.
    name : name.

clauses
    new(Diagram, Name) :-
        diagram := Diagram,
        name := Name.

end implement cond

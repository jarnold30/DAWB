% Copyright

implement flowElement
    open core, common, slot

facts
    target : slot.
    source : slot.
    name : name.

clauses
    new(Source, Target, Name) :-
        source := Source,
        target := Target,
        name = Name.

end implement flowElement

% Copyright

implement interaction
    open core, common

class facts
    interactionObj : (port Source, port Target).

facts
    target : port.
    source : port.
    name : name.

clauses
    new(Source, Target, Name) :-
        source := Source,
        target := Target,
        name := Name,
        assert(InteractionObj(Source, Target)).

    tryGetInteractionObj(Source, Target) :-
        interactionObj(Source, Target),
        !.

end implement interaction

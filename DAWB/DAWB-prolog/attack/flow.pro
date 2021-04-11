% Copyright

implement flow
    open core

class facts
    flowObj : (slot Source, slot Target).

facts
    target : slot.
    source : slot.

clauses
    new(Source, Target) :-
        source := Source,
        target := Target,
        assert(flowObj(Source, Target)).

    tryGetFlowObj(Source, Target) :-
        flowObj(Source, Target),
        !.

end implement flow

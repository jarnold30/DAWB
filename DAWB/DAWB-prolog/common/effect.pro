% Copyright

implement effect
    open core

facts
    preConditions : setM{cond}.
    postCondition : cond.

clauses
    new(PostCondition, PreConditions) :-
        postCondition := PostCondition,
        preConditions := PreConditions.

end implement effect

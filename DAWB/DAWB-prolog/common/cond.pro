% Copyright

implement cond
    open core, common

facts
    owner : owner.
    name : name.

clauses
    new(Owner, Name) :-
        owner := Owner,
        name := Name,
        if Owner = assetO(Asset) then
            Asset:policies:insert(This)
        end if.

end implement cond

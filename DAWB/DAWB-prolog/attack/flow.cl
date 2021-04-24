% Copyright

class flow : flow
    open core, slot

constructors
    new : (slot Source, slot Target).

predicates
    tryGetFlowObj : (slot Source, slot Target) determ (i,i) (i,o) (o,i) (o,o).

end class flow

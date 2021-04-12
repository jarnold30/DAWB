% Copyright

class flow : flow
    open core, common, slot

constructors
    new : (slot Source, slot Target).

predicates
    tryGetFlowObj : (slot Source, slot Target) nondeterm (i,i) (i,o) (o,i) (o,o).

end class flow

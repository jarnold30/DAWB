% Copyright

class interaction : interaction
    open core, common

constructors
    new : (port Source, port Target, name Name).

predicates
    tryGetInteractionObj : (slot Source, slot Target) nondeterm (i,i) (i,o) (o,i) (o,o).

end class interaction

% Copyright

interface port
    open core, common, start

properties
    rDiagram : rDiagram.
    name : name.

predicates
    hasStart : (start Start) nondeterm (i) (o).
    addStart : (start Start).

end interface port

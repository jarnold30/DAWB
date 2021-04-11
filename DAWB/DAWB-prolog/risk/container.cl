% Copyright

class container : container
    open core, common

domains
    function = (cond, cond*).

properties
    rDiagram : rDiagram.
    name : name.
    functions : setM{function*}.

constructors
    new : (rDiagram RDiagram, name Name).

end class container

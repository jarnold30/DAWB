% Copyright

interface agent
    open core, common

properties
    rDiagram : rDiagram.
    name : name.
    conditions : setM{cond}.
    ports : setM{port}.
    legitimateAccesses : setM{cond}.

end interface agent

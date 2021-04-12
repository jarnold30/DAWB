% Copyright

interface container
    open core, common

properties
    rDiagram : rDiagram.
    name : name.
    effects : setM{effect}.
    ports : setM{port}.
    assets : setM{asset}.
    conditions : setM{cond}.

end interface container

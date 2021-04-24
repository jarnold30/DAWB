% Copyright

class common
    open core

domains
    name = string.
    diagram = string.
    aDiagram = diagram.
    rDiagram = diagram.
    owner =
        commonO;
        assetO(asset Asset);
        aDiagramO(aDiagram ADiagram).

end class common

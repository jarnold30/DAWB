% Copyright

class riskWalker
    open core

predicates
    canAccess : (agent, asset, cond*).
    path : (agent, asset, cond*).
    assetCondsForAgent : (agent, container, asset, cond).
    matchAgentToContainerCond : (agent, container, cond).
    matchAgentToContainerConds : (agent, container, cond*).
    connected : (agent, container).
    connected2 : (container, container).
    agentHasAccessToPort : (agent, port).

end class riskWalker

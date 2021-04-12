% Copyright

class riskWalker
    open core

predicates
    canAccess : (agent, asset, cond*).
    path : (agent, asset, cond*).
    assetCondsForAgent : (agent, container, asset, cond).
    matchAgentToContainerCond : (agent, cond).
    matchAgentToContainerConds : (agent, cond*).
    connected : (agent, container).
    connected2 : (container, container).
    agentHasAccessToPort : (agent, port) nondeterm (i,o) (i,i).
    interaction : (port, port, name) nondeterm.

end class riskWalker

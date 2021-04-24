% Copyright

class riskWalker
    open core

predicates
    canAccess : (agent, asset, cond*).
    path : (agent, asset, cond*).
    assetCondsForAgent : (agent, container, asset, cond).
    matchAgentToCond : (agent, cond).
    matchAgentToConds : (agent, cond*).
    connected : (agent, container).
    connected2 : (container, container).
    agentHasAccessToPort : (agent, port) nondeterm (i,o) (i,i).

end class riskWalker

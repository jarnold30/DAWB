%%
%% This file is the risk walker.  It searches the risk diagrams for accesses.
%%

implement riskWalker
    open common

clauses
%% Let us find out if there is a path from a threat agent to an asset, and what the conditions are
    canAccess(ThreatAgent, Asset, Conditions) :-
        path(ThreatAgent, Asset, Conditions).
    path(ThreatAgent, Asset, Conditions) :-
        connected2(ThreatAgent, Container),
        Container:assets:contains(Asset),
        Conditions = [ cond(Asset, Condition) || assetCondsForAgent(ThreatAgent, Container, Asset, cond(Asset, Condition)) ].
    assetCondsForAgent(ThreatAgent, Container, Asset, cond(Asset, Condition)) :-
        matchAgentToContainerConds(ThreatAgent, Container:conditions).
    matchAgentToContainerConds(_Agent, []).
    matchAgentToContainerConds(Agent, [H | T]) :-
        matchAgentToContainerCond(Agent, H),
        matchAgentToContainerConds(Agent, T).
    matchAgentToContainerCond(Agent, Cond) :-
        Agent:conditions:contains(Cond).
    matchAgentToContainerCond(Agent, Cond) :-
        Agent:conditions:contains(Cond_Wildcard),
        Cond_Wildcard:name = '*'.

%% find a single-link path from the threat agent to the container that owns the asset
    connected(ThreatAgent, Container) :-
        ThreatAgent:ports:contains(P1),
        Container:ports:contains(P2),
        interaction(P2, P1, _).
    connected(Container1, Container2) :-
        Container1:ports:contains(P1),
        Container2:ports:contains(P2),
        interaction(P2, P1, _).

%% find a multi link path from a agent to the owning container
    connected2(Container1, Container2) :-
        connected(Container1, Container2).
    connected2(Container1, Container3) :-
        connected(Container1, Container2),
        connected2(Container2, Container3).

%% Now let us look at the ports a threat agent/container has
    agentHasAccessToPort(Threat, ContP) :-
        Threat:ports:contains(AP1),
        interaction(ContP, AP1, _).

end implement riskWalker

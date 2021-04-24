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
        assetCondsForAgent(ThreatAgent, Container, Asset, Conditions).
    assetCondsForAgent(ThreatAgent, Container, Asset, Conditions) :-
        matchAgentToContainerFunctions(ThreatAgent, Container).
    matchAgentToConds(_Agent, []).
    matchAgentToConds(Agent, [H | T]) :-
        matchAgentToCond(Agent, H),
        matchAgentToConds(Agent, T).
    matchAgentToCond(Agent, Cond) :-
        Agent:conditions:contains(Cond).
    matchAgentToCond(Agent, Cond) :-
        Agent:conditions:contains(Cond_Wildcard),
        Cond_Wildcard:name = '*'.

%% find a single-link path from the threat agent to the container that owns the asset
    connected(ThreatAgent, Container) :-
        ThreatAgent:ports:contains(P1),
        Container:ports:contains(P2),
        interaction::tryGetInteractionObj(P2, P1).
    connected(Container1, Container2) :-
        Container1:ports:contains(P1),
        Container2:ports:contains(P2),
        interaction::tryGetInteractionObj(P2, P1).

%% find a multi link path from a agent to the owning container
    connected2(Container1, Container2) :-
        connected(Container1, Container2).
    connected2(Container1, Container3) :-
        connected(Container1, Container2),
        connected2(Container2, Container3).

%% Now let us look at the ports a threat agent/container has
    agentHasAccessToPort(Threat, ContP) :-
        Threat:ports:contains(AP1),
        interaction::tryGetInteractionObj(ContP, AP1).

end implement riskWalker

%%
%% This file is the risk walker.  It searches the risk diagrams for accesses.
%%

implement riskWalker
    open common

clauses
%% Let us find out if there is a path from a threat agent to an asset, and what the conditions are
    canAccess(ThreatAgent, Asset, Conditions) :-
        threatAgent(ThreatAgent),
        asset(Asset),
        path(ThreatAgent, Asset, Conditions).
    path(ThreatAgent, Asset, Conditions) :-
        connected2(ThreatAgent, Container),
        containerHasAssets(Container, Asset),
        Conditions = [ cond(Asset, Condition) || assetCondsForAgent(ThreatAgent, Container, Asset, cond(Asset, Condition)) ].
    assetCondsForAgent(ThreatAgent, Container, Asset, cond(Asset, Condition)) :-
        containerFunction(Container, cond(Asset, Condition), PreConditionsForAgent),
        matchAgentToContainerConds(ThreatAgent, Container, PreConditionsForAgent).
    matchAgentToContainerConds(_Agent, _Container, []).
    matchAgentToContainerConds(Agent, Container, [H | T]) :-
        matchAgentToContainerCond(Agent, Container, H),
        matchAgentToContainerConds(Agent, Container, T).
    matchAgentToContainerCond(Agent, _Container, Cond) :-
        agentHasCondition(Agent, Cond).
    matchAgentToContainerCond(Agent, _Container, cond(AttackDiagram, _)) :-
        agentHasCondition(Agent, cond(AttackDiagram, '*')).

%% find a single-link path from the threat agent to the container that owns the asset
    connected(ThreatAgent, Container) :-
        agentHasPort(ThreatAgent, P1),
        containerHasPort(Container, P2),
        interaction(P2, P1, _).
    connected(Container1, Container2) :-
        containerHasPort(Container1, P1),
        containerHasPort(Container2, P2),
        interaction(P2, P1, _).

%% find a multi link path from a agent to the owning container
    connected2(Container1, Container2) :-
        connected(Container1, Container2).
    connected2(Container1, Container3) :-
        connected(Container1, Container2),
        connected2(Container2, Container3).

%% Now let us look at the ports a threat agent/container has
    agentHasAccessToPort(Threat, ContP) :-
        agentHasPort(Threat, AP1),
        interaction(ContP, AP1, _).

end implement riskWalker

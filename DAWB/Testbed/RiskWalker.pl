%%
%% This file is the risk walker.  It searches the risk diagrams for accesses.
%%

%% Let us find out if there is a path from a threat agent to an asset, and what the conditions are
canAccess(RiskDiagram, ThreatAgent, Asset, Conditions) :- 
	threatAgent(RiskDiagram, ThreatAgent), 
	asset(RiskDiagram, Asset), 
	path(RiskDiagram, ThreatAgent, Asset, Conditions). 
path(RiskDiagram, ThreatAgent, Asset, Conditions) :- 
	connected2(RiskDiagram, ThreatAgent, Container), 
	containerHasAssets(RiskDiagram, Container, Asset),
	findall( cond(Asset,Condition), 
			 assetCondsForAgent(RiskDiagram, ThreatAgent, Container, Asset, cond(Asset, Condition)), 
			 Conditions). 
assetCondsForAgent(RiskDiagram, ThreatAgent, Container, Asset, cond(Asset,Condition) ) :- 
	containerFunction(RiskDiagram, Container, cond(Asset,Condition), PreConditionsForAgent),
	matchAgentToContainerConds(RiskDiagram, ThreatAgent, Container, PreConditionsForAgent). 
matchAgentToContainerConds(_RiskDiagram, _Agent, _Container, []).
matchAgentToContainerConds(RiskDiagram, Agent, Container, [H|T]) :- 
	matchAgentToContainerCond(RiskDiagram, Agent, Container, H), 
	matchAgentToContainerConds(RiskDiagram, Agent, Container, T).
matchAgentToContainerCond(RiskDiagram, Agent, _Container, Cond) :- 
	agentHasCondition(RiskDiagram, Agent, Cond).
matchAgentToContainerCond(RiskDiagram, Agent, _Container, cond(AttackDiagram,_)) :- 
	agentHasCondition(RiskDiagram, Agent, cond(AttackDiagram,'*')).  

%% find a single-link path from the threat agent to the container that owns the asset
connected(RiskDiagram, ThreatAgent, Container) :- 
	agentHasPort(RiskDiagram, ThreatAgent, P1), 
	containerHasPort(RiskDiagram, Container, P2), 
	interaction(RiskDiagram, P2, P1, _).
connected(RiskDiagram, Container1, Container2) :- 
	containerHasPort(RiskDiagram, Container1, P1), 
	containerHasPort(RiskDiagram, Container2, P2), 
	interaction(RiskDiagram, P2, P1, _).

%% find a multi link path from a agent to the owning container
connected2(RiskDiagram, Container1, Container2) :- 
	connected(RiskDiagram, Container1, Container2).
connected2(RiskDiagram, Container1, Container3) :- 
	connected(RiskDiagram, Container1, Container2), 
	connected2(RiskDiagram, Container2, Container3).

%% Now let us look at the ports a threat agent/container has
agentHasAccessToPort(RiskDiagram, Threat, ContP) :- 
	agentHasPort(RiskDiagram, Threat, AP1), interaction(RiskDiagram, ContP, AP1, _).

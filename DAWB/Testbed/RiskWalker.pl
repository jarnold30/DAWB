%%
%% This file is the risk walker.  It searches the risk diagrams for accesses.
%%
%% Let us find out if there is a path from a threat agent to an asset
canAccess(RiskDiagram, ThreatAgent, Asset) :- threatAgent(RiskDiagram, ThreatAgent), asset(RiskDiagram, Asset), path(RiskDiagram, ThreatAgent, Asset).
path(RiskDiagram, ThreatAgent, Asset) :- connected2(RiskDiagram, ThreatAgent, Container), containerHasAssets(RiskDiagram, Container, Asset).
%%
%% find a path from the threat agent to the container that owns the asset
connected(RiskDiagram, ThreatAgent, Container) :- 
	agentHasPort(RiskDiagram, ThreatAgent, P1), containerHasPort(RiskDiagram, Container, P2), interaction(RiskDiagram, P2, P1, _).
connected(RiskDiagram, Container1, Container2) :- 
	containerHasPort(RiskDiagram, Container1, P1), containerHasPort(RiskDiagram, Container2, P2), interaction(RiskDiagram, P2, P1, _).
connected2(RiskDiagram, Container1, Container2) :- connected(RiskDiagram, Container1, Container2).
connected2(RiskDiagram, Container1, Container3) :- connected(RiskDiagram, Container1, Container2), connected2(RiskDiagram, Container2, Container3).
%%
%% Now let us look at the ports a threat agent/container has
agentHasAccessToPort(RiskDiagram, Threat, ContP) :- 
	agentHasPort(RiskDiagram, Threat, AP1), interaction(RiskDiagram, ContP, AP1, _).

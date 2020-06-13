canAccess(ThreatAgent, Asset) :- threatAgent(ThreatAgent), asset(Asset), path(ThreatAgent, Asset).
path(ThreatAgent,Asset) :- connected2(ThreatAgent, Container), containerHasAssets(Container, Asset).
connected(ThreatAgent, Container) :- agentHasPort(ThreatAgent, P1), containerHasPort(Container, P2), interaction(P2, P1, _).
connected(Container1, Container2) :- containerHasPort(Container1, P1), containerHasPort(Container2, P2), interaction(P2, P1, _).
connected2(Container1, Container2) :- connected(Container1, Container2).
connected2(Container1, Container3) :- connected(Container1, Container2), connected2(Container2, Container3).
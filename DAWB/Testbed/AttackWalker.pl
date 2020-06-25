%%
%% this is the attack walker.  It searches attack diagrams for accesses.
%%

%% in this clause, Port is both a port and the name of a port in a risk diagram, and the name of the corresponding attack diagram.
%% Which start elements can an agent see?
agentSeesStart(RiskDiagram, T, Port, Start) :- agentHasAccessToPort(RiskDiagram, T, Port), start(Port, Start).

%% is a flow element reachable from the start of a diagram for an agent?
reachableFromStart(AttackDiagram, Agent, FlowElement) :- start(AttackDiagram, Start), attackFlow2(AttackDiagram, Agent, Start, FlowElement).

%% can an agent get from the first element to the second in an attack diagram?
isState(AttackDiagram, X) :- state(AttackDiagram, X).
isState(AttackDiagram, X) :- start(AttackDiagram, X).
isState(AttackDiagram, X) :- end(AttackDiagram, X).
attackFlow1(AttackDiagram, _Agent, FlowElement1, FlowElement2) :- flow(AttackDiagram, FlowElement1, FlowElement2), isState(AttackDiagram, FlowElement1).
attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2) :- 
	flow(AttackDiagram, FlowElement1, FlowElement2), 
	task(AttackDiagram, FlowElement1),
	findall(ACond,agentHasCondition(_, Agent, ACond),ACondList),
	findall(TCond,taskHasPreCondition(AttackDiagram, FlowElement1, TCond),TCondList),
	subset(TCondList, ACondList).
attackFlow2(AttackDiagram, Agent, FlowElement1, FlowElement3) :- 
	attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2), 
	attackFlow2(AttackDiagram, Agent, FlowElement2, FlowElement3).
attackFlow2(AttackDiagram, Agent, FlowElement1, FlowElement2) :- 
	attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2).

%% can an agent get to the flow element?  (ignoring conditions)

agentSeesState(RiskDiagram, T, AttackDiagram, FlowElement) :- 
	agentSeesStart( RiskDiagram, T, AttackDiagram, Start ), 
	attackFlow2( AttackDiagram, T, Start, FlowElement), 
	state(AttackDiagram, FlowElement).

gatherConditionsForAgent(RiskDiagram, T, AttackDiagram, FlowElement) :- 
	agentSeesStart( RiskDiagram, T, AttackDiagram, Start ), 
	attackFlow2( AttackDiagram, T, Start, FlowElement), 
	state(AttackDiagram, FlowElement),
	stateHasPostCondition(AttackDiagram, FlowElement, SCond),
	\+(agentHasCondition(RiskDiagram,T,SCond)),
	assertz(agentHasCondition(RiskDiagram,T,SCond)). %% i.e. only create a new condition if it doesnt already exist
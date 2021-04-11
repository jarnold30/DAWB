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

%% Can the agent traverse a single link of the attack diagram? 
%% If starting at a state, yes.  If starting at a task, the agent has to have the conditions to complete the task.
attackFlow1(AttackDiagram, _Agent, FlowElement1, FlowElement2) :- flow(AttackDiagram, FlowElement1, FlowElement2), isState(AttackDiagram, FlowElement1).
attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2) :- 
	flow(AttackDiagram, FlowElement1, FlowElement2), 
	task(AttackDiagram, FlowElement1),
	findall(ACond,agentHasCondition(_, Agent, ACond),ACondList),
	findall(TCond,taskHasPreCondition(AttackDiagram, FlowElement1, TCond),TCondList),
	subset(TCondList, ACondList).

%% Can the agent traverse any number of links of the attack diagram?
attackFlow2(AttackDiagram, Agent, FlowElement1, FlowElement3) :- 
	attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2), 
	attackFlow2(AttackDiagram, Agent, FlowElement2, FlowElement3).
attackFlow2(AttackDiagram, Agent, FlowElement1, FlowElement2) :- 
	attackFlow1(AttackDiagram, Agent, FlowElement1, FlowElement2).

%% can an agent get to the state?
agentSeesState(RiskDiagram, Agent, AttackDiagram, FlowElement) :- 
	agentSeesStart( RiskDiagram, Agent, AttackDiagram, Start ), 
	attackFlow2( AttackDiagram, Agent, Start, FlowElement), 
	state(AttackDiagram, FlowElement).

%% find out what conditions ana agent gets by being able to get to a state
gatherConditionsForAgent(RiskDiagram, Agent, AttackDiagram, FlowElement) :- 
	agentSeesStart( RiskDiagram, Agent, AttackDiagram, Start ), 
	attackFlow2( AttackDiagram, Agent, Start, FlowElement ), 
	state( AttackDiagram, FlowElement ),
	findall( SCond, stateHasPostCondition(AttackDiagram, FlowElement, SCond), StateCondList ),
	findall( ACond, agentHasCondition(RiskDiagram,Agent,ACond), AgentCondList ),
	subtract( StateCondList, AgentCondList, ConditionsToAdd ),
	addConditions( RiskDiagram, Agent, ConditionsToAdd ).

%% register the fact that an agent has now achieved some conditions by reaching a state
addConditions( _RiskDiagram, _Agent, [] ).
addConditions( RiskDiagram, Agent, [H|Tail] ) :- 
	assertz( agentHasCondition(RiskDiagram,Agent,H) ),
	addConditions( RiskDiagram, Agent, Tail ). 
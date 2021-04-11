%%
%% this is the attack walker.  It searches attack diagrams for accesses.
%%

implement attackWalker
    open core, common, attack, flow, start, endPoint, state, slot, agent, port, riskWalker, flow

clauses
%% in this clause, Port is both a port and the name of a port in a risk diagram, and the name of the corresponding attack diagram.
%% Which start elements can an agent see?
    agentSeesStart(Agent, Port, Start) :-
        riskWalker::agentHasAccessToPort(Agent, Port),
        Port:hasStart(Start).

%% is a slot reachable from the start of a diagram for an agent?
    reachableFromStart(Agent, Slot) :-
        attackFlow2(Agent, _Start, Slot).

%% Is an object a 'state' in an attack diagram?
    isState(Slot) :-
        Slot:myType in ["endPoint", "state", "start"].

%% Can the agent traverse a single link of the attack diagram?
%% If starting at a state, yes.  If starting at a task, the agent has to have the conditions to complete the task.
    attackFlow1(_Agent, Slot1, Slot2) :-
        tryGetFlowObj(Slot1, Slot2),
        isState(Slot1).
    attackFlow1(Agent, Slot1, Slot2) :-
        tryGetFlowObj(Slot1, Slot2),
        list::all(Agent:conditions:asList, { (E) :- list::isMember(E, tryConvert(task, Slot1):preConditions:asList) }).

%% Can the agent traverse any number of links of the attack diagram?
    attackFlow2(Agent, Slot1, Slot3) :-
        attackFlow1(Agent, Slot1, Slot2),
        attackFlow2(Agent, Slot2, Slot3).
    attackFlow2(Agent, Slot1, Slot2) :-
        attackFlow1(Agent, Slot1, Slot2).

%% can an agent get to the state?
    agentSeesState(Agent, Slot) :-
        agentSeesStart(Agent, _Port, Start),
        attackFlow2(Agent, Start, Slot),
        isState(Slot).

%% find out what conditions ana agent gets by being able to get to a state
    gatherConditionsForAgent(Agent, State) :-
        agentSeesStart(Agent, _Port, Start),
        attackFlow2(Agent, Start, State),
        addConditions(Agent, State:postConditions).

%% register the fact that an agent has now achieved some conditions by reaching a state
    addConditions(_Agent, []).
    addConditions(Agent, [H | Tail]) :-
        (Agent:conditions:isMember(H) or Agent:conditions:add(H)),
        addConditions(Agent, Tail).

end implement attackWalker

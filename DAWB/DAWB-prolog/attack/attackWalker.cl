% Copyright

class attackWalker
    open core, common, flow, start, slot, agent, port

predicates
    agentSeesStart : (agent Agent, port Port, start Start).
    reachableFromStart : (agent Agent, slot Slot).
    isState : (slot Slot).
    attackFlow1 : (agent Agent, slot Slot1, slot Slot2).
    attackFlow2 : (agent Agent, slot Slot1, slot Slot2) nondeterm (i,i,i) (i,o,i) (i,i,o).
    agentSeesState : (agent Agent, slot Slot).
    gatherConditionsForAgent : (agent Agent, state State).
    addConditions : (agent Agent, cond*).

end class attackWalker

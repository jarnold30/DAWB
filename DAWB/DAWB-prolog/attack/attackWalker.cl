% Copyright

class attackWalker

predicates
    agentSeesStart : (agent Agent, port Port, start Start) nondeterm (i,i,i) (i,o,i) (i,i,o) (i,o,o).
    reachableFromStart : (agent Agent, slot Slot) nondeterm.
    isState : (slot Slot) determ.
    attackFlow1 : (agent Agent, slot Slot1, slot Slot2) nondeterm (i,i,i) (i,o,i) (i,i,o) (i,o,o).
    attackFlow2 : (agent Agent, slot Slot1, slot Slot2) nondeterm (i,i,i) (i,o,i) (i,i,o) (i,o,o).
    agentSeesState : (agent Agent, slot Slot) nondeterm.
    gatherConditionsForAgent : (agent Agent, state State) nondeterm.
    addConditions : (agent Agent, cond*) multi.

end class attackWalker

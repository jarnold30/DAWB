%%
%% Attack model: Auditor UI
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files

implement auditorUI
    open attack

class predicates
    run : ().
clauses
%% Here is a list of elements in the model:
    run() :-
        start('Auditor UI', 'Start'),
        task('Auditor UI', 'Login'),
        task('Auditor UI', 'Buffer Overflow Attack'),
        taskHasPreCondition('Auditor UI', 'Login', cond('Auditor UI', 'Auditor Password')),
        taskHasPreCondition('Auditor UI', 'Buffer Overflow Attack', cond('Common', 'PT Skill')),
        flow('Auditor UI', 'Start', 'Login'),
        flow('Auditor UI', 'Login', 'Logged In'),
        flow('Auditor UI', 'Buffer Overflow Attack', 'Logged In'),
        flow('Auditor UI', 'Start', 'Buffer Overflow Attack'),
        state('Auditor UI', 'Logged In'),
        cond('Auditor UI', 'Auditor Access'),
        stateHasPostCondition('Auditor UI', 'Logged In', cond('Auditor UI', 'Auditor Access')).

end implement auditorUI

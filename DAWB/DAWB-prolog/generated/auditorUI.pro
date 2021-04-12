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
        Start_AuditorUI_start = start::new('Auditor UI', 'Start'),
        Task_AuditorUI_Login = task::new('Auditor UI', 'Login'),
        Task_AuditorUI_BufferOverflowAttack = task::new('Auditor UI', 'Buffer Overflow Attack'),
        Task_AuditorUI_Login:preConditions:insert(cond::new('Auditor UI', 'Auditor Password')),
        Task_AuditorUI_BufferOverflowAttack:preConditions:insert(cond::new('Common', 'PT Skill')),
        State_AuditorUI_LoggedIN = state::new('Auditor UI', 'Logged In'),
        Cond_AuditorAccess = cond::new('Auditor UI', 'Auditor Access'),
        State_AuditorUI_LoggedIN:postConditions:insert(Cond_AuditorAccess),
        Flow_Start_Login = flow::new(Start_AuditorUI_start, Task_AuditorUI_Login),
        Flow_Login_LoggedIn = flow::new(Task_AuditorUI_Login, State_AuditorUI_LoggedIN),
        Flow_BufferOverflowAttack_LoggedIn = flow::new(Task_AuditorUI_BufferOverflowAttack, State_AuditorUI_LoggedIN),
        Flow_Start_BufferOverflowAttack = flow::new(Start_AuditorUI_start, Task_AuditorUI_BufferOverflowAttack).

end implement auditorUI

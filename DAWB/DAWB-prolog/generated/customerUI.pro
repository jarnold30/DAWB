%%
%% Attack model: Customer UI
%%
%% declare some predicates as multifile and discontiguous to avoid warnings when loaded and allow use of multiple files

implement customerUI
    open attack

class predicates
    run : ().
clauses
%% Here is a list of elements in the model:
    run() :-
        End_CustomerUI_End = endState::new('Customer UI', 'end'),
        Flow_logout_end = flow::new('Customer UI', 'logout', 'end'),
        Flow_start_register = flow::new('Customer UI', 'start', 'register'),
        Flow_register_registered = flow::new('Customer UI', 'register', 'registered'),
        Flow_registered_login = flow::new('Customer UI', 'registered', 'login'),
        Flow_login_loggedin = flow::new('Customer UI', 'login', 'logged in'),
        Flow_loggedin_logout = flow::new('Customer UI', 'logged in', 'logout'),
        Flow_start_sqlinjection = flow::new('Customer UI', 'start', 'sql injection'),
        Flow_sqlinjection_completecontrol = flow::new('Customer UI', 'sql injection', 'complete control'),
        Task_CustomerUI_logout = task::new('Customer UI', 'logout'),
        Task_CustomerUI_register = task::new('Customer UI', 'register'),
        Task_CustomerUI_login = task::new('Customer UI', 'login'),
        Task_CustomerUI_sqlinjection = task::new('Customer UI', 'sql injection'),
        Start_CustomerUI_start = start::new('Customer UI', 'start'),
        State_CustomerUI_registered = state::new('Customer UI', 'registered'),
        State_CustomerUI_loggedin = state::new('Customer UI', 'logged in'),
        State_CustomerUI_completecontrol = state::new('Customer UI', 'complete control'),
        Cond_password = cond::new('Customer UI', 'password'),
        Cond_UserID = cond::new('Customer UI', 'UserID'),
        Cond_CustomerAccess = cond::new('Customer UI', 'Customer Access'),
        Cond_Star = cond::new('Common', '*'),
        Cond_PTSkill = cond::new('Common', 'PT Skill'),
        State_CustomerUI_loggedin:postConditions:add(Cond_CustomerAccess),
        State_CustomerUI_registered:postConditions:add(Cond_password),
        State_CustomerUI_registered:postConditions:add(Cond_UserID),
        State_CustomerUI_completecontrol:postConditions:add(Cond_Star),
        Task_CustomerUI_login:preConditions:add(Cond_password),
        Task_CustomerUI_login:preConditions:add(Cond_UserID),
        Task_CustomerUI_sqlinjection:preConditions:add(Cond_PTSkill).

end implement customerUI

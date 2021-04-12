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
        End_CustomerUI_End = endPoint::new('Customer UI', 'end'),
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
        Cond_Star = cond::new('Common', "*"),
        Cond_PTSkill = cond::new('Common', 'PT Skill'),
        State_CustomerUI_loggedin:postConditions:insert(Cond_CustomerAccess),
        State_CustomerUI_registered:postConditions:insert(Cond_password),
        State_CustomerUI_registered:postConditions:insert(Cond_UserID),
        State_CustomerUI_completecontrol:postConditions:insert(Cond_Star),
        Task_CustomerUI_login:preConditions:insert(Cond_password),
        Task_CustomerUI_login:preConditions:insert(Cond_UserID),
        Task_CustomerUI_sqlinjection:preConditions:insert(Cond_PTSkill),
        Flow_logout_end = flow::new(Task_CustomerUI_logout, End_CustomerUI_End),
        Flow_start_register = flow::new(Start_CustomerUI_start, Task_CustomerUI_register),
        Flow_register_registered = flow::new(Task_CustomerUI_register, State_CustomerUI_registered),
        Flow_registered_login = flow::new(State_CustomerUI_registered, Task_CustomerUI_login),
        Flow_login_loggedin = flow::new(Task_CustomerUI_login, State_CustomerUI_loggedin),
        Flow_loggedin_logout = flow::new(State_CustomerUI_loggedin, Task_CustomerUI_logout),
        Flow_start_sqlinjection = flow::new(Start_CustomerUI_start, Task_CustomerUI_sqlinjection),
        Flow_sqlinjection_completecontrol = flow::new(Start_CustomerUI_start, State_CustomerUI_completecontrol).

end implement customerUI

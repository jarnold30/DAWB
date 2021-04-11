%%
%% Attack model: DB
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files

implement dB
    open attack

class predicates
    run : ().
clauses
    run() :-
        Start_DB_Start = start::new('DB', 'Start'),
        Task_DB_AppLogin = task::new('DB', 'App Login'),
        State_DB_Loggedin = state::new('DB', 'Logged In'),
        Cond_Star = cond::new('DB', 'DB Password'),
        Cond_DBPassword = cond::new('DB', 'DB Password'),
        Flow_Start_AppLogin = flow::new(Start_DB_Start, Task_DB_AppLogin),
        Flow_AppLogin_LoggedIn = flow::new(Task_DB_AppLogin, State_DB_Loggedin),
        Task_DB_AppLogin:preConditions:add(Cond_DBPassword),
        State_DB_Loggedin:postCondisions:add(Cond_Star).

end implement dB

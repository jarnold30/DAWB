% Copyright

implement attack
    open core, cond, start, task, state, endPoint, flow
end implement attack

goal
    DB_Start = start::new('DB', 'Start'),
    DB_AppLogin = task::new('DB', 'App Login'),
    Common_Star = cond::new('Common', "*"),
    DB_DBPassword = cond::new('DB', 'DB Password'),
    DBStart_DBAppLogin = flow::new(DB_Start, DB_AppLogin),
    DB_LoggedIn = state::new('DB', 'Logged In'),
    DBAppLogin_DBLoggedIn = flow::new(DB_AppLogin, DB_LoggedIn),
    DB_AppLogin:preConditions:insert(DB_DBPassword),
    DB_LoggedIn:postConditions:insert(Common_Star).

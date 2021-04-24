%%
%% Risk model: Bank Account
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files

implement risk1
    open common

class predicates
    run : () determ.
clauses
%% Here is a list of containers in the model:
    run() :-
        Cont_BankAccount_WebApp = container::new('Bank Account', 'Web App'),
        Cont_BankAccount_DBService = container::new('Bank Account', 'DB Service'),
        Asset_BankAccount_BankAccounts = asset::new('Bank Account', 'Bank Accounts'),
        Cond_access_to_own_account = cond::new(assetO(Asset_BankAccount_BankAccounts), 'access to own account'),
        Cond_customer_access = cond::new(aDiagramO('Customer UI'), 'Customer Access'),
        Cond_RO_access_to_all_accounts = cond::new(assetO(Asset_BankAccount_BankAccounts), 'RO access to all accounts'),
        Cond_Auditor_Access = cond::new(aDiagramO('Auditor UI'), 'Auditor Access'),
        Cond_DB_password = cond::new(aDiagramO('DB'), 'DB password'),
        Port_DBClient = port::new('Bank Account', 'DB Client'),
        Port_CustomerUI = port::new('Bank Account', 'Customer UI'),
        Port_AuditorUI = port::new('Bank Account', 'Auditor UI'),
        Port_DB = port::new('Bank Account', 'DB'),
        Agent_BankAccount_Customer = agent::new('Bank Account', 'Customer'),
        Agent_BankAccount_Auditor = agent::new('Bank Account', 'Auditor'),
        Agent_BankAccount_Hacker = agent::new('Bank Account', 'Hacker'),
        Port_hBrowser = port::new('Bank Account', 'hBrowser'),
        Port_FatClient = port::new('Bank Account', 'Fat client'),
        Port_cBrowser = port::new('Bank Account', 'cBrowser'),
        Cond_Cost1000 = cond::new(commonO, 'Cost(1000)'),
        Cond_Can_Find_0days = cond::new(commonO, 'Can Find 0days'),
        Cond_PT_Skill = cond::new(commonO, 'PT Skill'),
        Cond_Auditor_password = cond::new(aDiagramO('Auditor UI'), 'Auditor password'),
        Cont_BankAccount_WebApp:effects:insert(effect::new(Cond_access_to_own_account, setM_redBlack::new([Cond_customer_access]))),
        Cont_BankAccount_WebApp:effects:insert(effect::new(Cond_RO_access_to_all_accounts, setM_redBlack::new([Cond_Auditor_Access]))),
        Cont_BankAccount_WebApp:conditions:insert(Cond_DB_password),
        Cont_BankAccount_WebApp:ports:insert(Port_DBClient),
        Cont_BankAccount_WebApp:ports:insert(Port_CustomerUI),
        Cont_BankAccount_WebApp:ports:insert(Port_AuditorUI),
        Cont_BankAccount_WebApp:ports:insert(Port_DBClient),
        Cont_BankAccount_DBService:ports:insert(Port_DB),
        Cont_BankAccount_WebApp:assets:insert(Asset_BankAccount_BankAccounts),
        Cont_BankAccount_DBService:assets:insert(Asset_BankAccount_BankAccounts),
        Asset_BankAccount_BankAccounts:number = '1000000',
        Agent_BankAccount_Customer:legitimateAccesses:insert(Cond_access_to_own_account),
        Agent_BankAccount_Auditor:legitimateAccesses:insertList([Cond_RO_access_to_all_accounts, Cond_access_to_own_account]),
        Agent_BankAccount_Hacker:ports:insert(Port_hBrowser),
        Agent_BankAccount_Auditor:ports:insert(Port_FatClient),
        Agent_BankAccount_Customer:ports:insert(Port_cBrowser),
        Agent_BankAccount_Hacker:conditions:insert(Cond_Cost1000),
        Agent_BankAccount_Hacker:conditions:insert(Cond_Can_Find_0days),
        Agent_BankAccount_Hacker:conditions:insert(Cond_PT_Skill),
        Agent_BankAccount_Auditor:conditions:insert(Cond_Auditor_password),
        _ = interaction::new(Port_CustomerUI, Port_cBrowser, 'http'),
        _ = interaction::new(Port_CustomerUI, Port_hBrowser, 'http'),
        _ = interaction::new(Port_AuditorUI, Port_FatClient, 'WS API'),
        _ = interaction::new(Port_DB, Port_DBClient, 'jdbc'),
        _ = interaction::new(Port_AuditorUI, Port_hBrowser, 'WS API').

end implement risk1

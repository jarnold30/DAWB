%%
%% Risk model: Bank Account
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files

implement risk1
    open common, container

class predicates
    containerFunction : (container, cond, cond*).
    containerHasCondition : (container, cond).
    containerHasPort : (container, port).
    interaction : (port, port, name).
    containerHasAssets : (container, asset).
    assetNumber : (asset, string).
    agentHasPort : (agent, port).
    agentHasLegitimateAccesses : (agent, cond*).
    agentHasCondition : (agent, cond).
    run : ().

clauses
%% Here is a list of containers in the model:
    containerFunction(Cont_BankAccount_WebApp, Cond_access_to_own_account, [Cond_customer_access]).
    containerFunction(Cont_BankAccount_WebApp, Cond_RO_access_to_all_accounts, [Cond_Auditor_Access]).
    containerHasCondition(Cont_BankAccount_WebApp, Cond_DB_password).
    containerHasPort(Cont_BankAccount_WebApp, Port_DBClient).
    containerHasPort(Cont_BankAccount_WebApp, Port_CustomerUI).
    containerHasPort(Cont_BankAccount_WebApp, Port_AuditorUI).
    containerHasPort(Cont_BankAccount_DBService, Port_DB).
    interaction(Port_CustomerUI, Port_cBrowser, 'http').
    interaction(Port_CustomerUI, Port_hBrowser, 'http').
    interaction(Port_AuditorUI, Port_FatClient, 'WS API').
    interaction(Port_DB, Port_DBClient, 'jdbc').
    interaction(Port_AuditorUI, Port_hBrowser, 'WS API').
    containerHasAssets(Cont_BankAccount_WebApp, 'Bank Accounts').
    containerHasAssets(Cont_BankAccount_DBService, 'Bank Accounts').

%% Here is a list of assets in the model:
    assetNumber(BankAccount_BankAccounts, '1000000').

%% Here is a list of threat agents in the model:
    agentHasLegitimateAccesses(Agent_BankAccount_Customer, [Cond_access_to_own_account]).
    agentHasLegitimateAccesses(Agent_BankAccount_Auditor, [Cond_RO_access_to_all_accounts, Cond_access_to_own_account]).
    agentHasLegitimateAccesses(Agent_BankAccount_Hacker, []).
    agentHasPort(Agent_BankAccount_Hacker, Port_hBrowser).
    agentHasPort(Agent_BankAccount_Auditor, Port_FatClient).
    agentHasPort(Agent_BankAccount_Customer, Port_cBrowser).
    agentHasCondition(Agent_BankAccount_Hacker, Cond_Cost1000).
    agentHasCondition(Agent_BankAccount_Hacker, Cond_Can_Find_0days).
    agentHasCondition(Agent_BankAccount_Hacker, Cond_PT_Skill).
    agentHasCondition(Agent_BankAccount_Auditor, Cond_Auditor_password).

    run() :-
        Cont_BankAccount_WebApp = container::new('Bank Account', 'Web App'),
        Cont_BankAccount_DBService = container::new('Bank Account', 'DB Service'),
        Ass_BankAccount_BankAccounts = asset::new('Bank Account', 'Bank Accounts'),
        Cond_access_to_own_account = cond::new('Bank Accounts', 'access to own account'),
        Cond_customer_access = cond::new('Customer UI', 'Customer Access'),
        Cond_RO_access_to_all_accounts = cond::new('Bank Accounts', 'RO access to all accounts'),
        Cond_Auditor_Access = cond::new('Auditor UI', 'Auditor Access'),
        Cond_DB_password = cond::new('DB', 'DB password'),
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
        Cond_Cost1000 = cond::new('Common', 'Cost(1000)'),
        Cond_Can_Find_0days = cond::new('Common', 'Can Find 0days'),
        Cond_PT_Skill = cond::new('Common', 'PT Skill'),
        Cond_Auditor_password = cond::new('Auditor UI', 'Auditor password').

end implement risk1

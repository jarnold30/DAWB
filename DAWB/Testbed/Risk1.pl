 
%%
%% Risk model: Bank Account
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3.
:- multifile agentHasLegitimateAccesses/4, containerHasCondition/3.
:- discontiguous container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3.
:- discontiguous agentHasLegitimateAccesses/4, containerHasCondition/3.
:- dynamic agentHasCondition/3.

%% Here is a list of containers in the model:
container( 'Bank Account', 'Web App' ).
containerInternalFunctions( 'Bank Account', 'Web App', '1' ).
containerHasCondition( 'Bank Account', 'Web App', 'DB password' ).
containerHasPort( 'Bank Account', 'Web App', 'DB Client' ).
containerHasPort( 'Bank Account', 'Web App', 'Customer UI' ).
interaction( 'Bank Account', 'Customer UI', 'cBrowser', 'http' ).
interaction( 'Bank Account', 'Customer UI', 'hBrowser', 'http' ).
containerHasPort( 'Bank Account', 'Web App', 'Auditor UI' ).
interaction( 'Bank Account', 'Auditor UI', 'Fat client', 'WS API' ).
interaction( 'Bank Account', 'Auditor UI', 'hBrowser', 'WS API' ).
container( 'Bank Account', 'DB Service' ).
containerHasPort( 'Bank Account', 'DB Service', 'DB' ).
interaction( 'Bank Account', 'DB', 'DB Client', 'jdbc' ).
containerHasAssets( 'Bank Account', 'DB Service', 'Bank Accounts' ).

%% Here is a list of assets in the model:
asset( 'Bank Account', 'Bank Accounts' ).
assetNumber( 'Bank Account', 'Bank Accounts', '1000000' ).

%% Here is a list of threat agents in the model:
threatAgent( 'Bank Account', 'Customer' ).
agentInternalFunctions( 'Bank Account', 'Customer', '2' ).
agentHasPort( 'Bank Account', 'Customer', 'cBrowser' ).
agentHasLegitimateAccesses( 'Bank Account', 'Customer', 'Bank Accounts', '[access to own account]' ).
threatAgent( 'Bank Account', 'Auditor' ).
agentHasPort( 'Bank Account', 'Auditor', 'Fat client' ).
agentHasCondition( 'Bank Account', 'Auditor', 'Auditor password' ).
agentHasLegitimateAccesses( 'Bank Account', 'Auditor', 'Bank Accounts', '[RO access to all accounts]' ).
threatAgent( 'Bank Account', 'Hacker' ).
agentHasPort( 'Bank Account', 'Hacker', 'hBrowser' ).
agentHasCondition( 'Bank Account', 'Hacker', 'Cost(1000)' ).
agentHasCondition( 'Bank Account', 'Hacker', 'Can Find 0days' ).
agentHasCondition( 'Bank Account', 'Hacker', 'PT Skill' ).

 
%%
%% Risk model: Bank Account
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3.
:- multifile agentHasLegitimateAccesses/4, containerHasCondition/3, containerHasAssets/3,agentHasLegitimateAccesses/3.
:- multifile containerFunction/4.
:- discontiguous container/2, containerHasPort/3, interaction/4, threatAgent/2, agentHasCondition/3, agentHasPort/3.
:- discontiguous agentHasLegitimateAccesses/4, containerHasCondition/3, containerHasAssets/3, agentHasLegitimateAccesses/3.
:- discontiguous containerFunction/4.
:- dynamic agentHasCondition/3.
%% Here is a list of containers in the model:
container( 'Bank Account', 'Web App' ).
containerFunction( 'Bank Account', 'Web App', cond('Bank Accounts', 'access to own account'), [ cond('Customer UI', 'Customer Access') ] ).
containerFunction( 'Bank Account', 'Web App', cond('Bank Accounts', 'RO access to all accounts'), [ cond('Auditor UI', 'Auditor Access') ] ).
containerHasCondition( 'Bank Account', 'Web App', cond('DB', 'DB password') ).
containerHasPort( 'Bank Account', 'Web App', 'DB Client' ).
containerHasPort( 'Bank Account', 'Web App', 'Customer UI' ).
interaction( 'Bank Account', 'Customer UI', 'cBrowser', 'http' ).
interaction( 'Bank Account', 'Customer UI', 'hBrowser', 'http' ).
containerHasPort( 'Bank Account', 'Web App', 'Auditor UI' ).
interaction( 'Bank Account', 'Auditor UI', 'Fat client', 'WS API' ).
interaction( 'Bank Account', 'Auditor UI', 'hBrowser', 'WS API' ).
containerHasAssets( 'Bank Account', 'Web App', 'Bank Accounts' ).
container( 'Bank Account', 'DB Service' ).
containerHasPort( 'Bank Account', 'DB Service', 'DB' ).
interaction( 'Bank Account', 'DB', 'DB Client', 'jdbc' ).
containerHasAssets( 'Bank Account', 'DB Service', 'Bank Accounts' ).

%% Here is a list of assets in the model:
asset( 'Bank Account', 'Bank Accounts' ).
assetNumber( 'Bank Account', 'Bank Accounts', '1000000' ).

%% Here is a list of threat agents in the model:
threatAgent( 'Bank Account', 'Customer' ).
agentHasPort( 'Bank Account', 'Customer', 'cBrowser' ).
agentHasLegitimateAccesses( 'Bank Account', 'Customer', [
 'Bank Accounts.access to own account'
] ).
threatAgent( 'Bank Account', 'Auditor' ).
agentHasPort( 'Bank Account', 'Auditor', 'Fat client' ).
agentHasCondition( 'Bank Account', 'Auditor', cond('Auditor UI', 'Auditor password') ).
agentHasLegitimateAccesses( 'Bank Account', 'Auditor', [
 'Bank Accounts.RO access to all accounts'
 ,  'Bank Accounts.access to own account'
] ).
threatAgent( 'Bank Account', 'Hacker' ).
agentHasPort( 'Bank Account', 'Hacker', 'hBrowser' ).
agentHasCondition( 'Bank Account', 'Hacker', cond('Common', 'Cost(1000)') ).
agentHasCondition( 'Bank Account', 'Hacker', cond('Common', 'Can Find 0days') ).
agentHasCondition( 'Bank Account', 'Hacker', cond('Common', 'PT Skill') ).
agentHasLegitimateAccesses( 'Bank Account', 'Hacker', [
] ).

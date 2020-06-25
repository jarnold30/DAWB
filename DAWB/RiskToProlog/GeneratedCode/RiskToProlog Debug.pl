 
%!
% Risk model: Bank Account
% InputFile: 
% FileName: 
%
% Here is a list of containers in the model:
container( 'Bank Account.Web App' ).
containerInternalFunctions( 'Bank Account.Web App', '1' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.DB Client' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.Customer UI' ).
interaction( 'Bank Account.Customer UI', 'Bank Account.cBrowser', 'http' ).
interaction( 'Bank Account.Customer UI', 'Bank Account.hBrowser', 'http' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.Auditor UI' ).
interaction( 'Bank Account.Auditor UI', 'Bank Account.Fat client', 'WS API' ).
interaction( 'Bank Account.Auditor UI', 'Bank Account.hBrowser', 'WS API' ).
container( 'Bank Account.DB Service' ).
containerHasPort( 'Bank Account.DB Service', 'Bank Account.DB' ).
interaction( 'Bank Account.DB', 'Bank Account.DB Client', 'jdbc' ).
containerHasAssets( 'Bank Account.DB Service', 'Bank Account.Bank Accounts' ).

% Here is a list of assets in the model:
asset( 'Bank Account.Bank Accounts' ).
assetNumber( 'Bank Accounts', '1000000' ).

% Here is a list of threat agents in the model:
threatAgent( 'Bank Account.Customer' ).
agentInternalFunctions( 'Bank Account.Customer', '2' ).
agentHasPort( 'Bank Account.Customer', 'Bank Account.cBrowser' ).
agentHasLegitimateAccesses( 'Bank Account.Customer', 'Bank Account.Bank Accounts', '[access to own account]' ).
threatAgent( 'Bank Account.Auditor' ).
agentHasPort( 'Bank Account.Auditor', 'Bank Account.Fat client' ).
agentHasCondition( 'Bank Account.Auditor', 'Bank Account.Auditor password' ).
agentHasLegitimateAccesses( 'Bank Account.Auditor', 'Bank Account.Bank Accounts', '[RO access to all accounts]' ).
threatAgent( 'Bank Account.Hacker' ).
agentHasPort( 'Bank Account.Hacker', 'Bank Account.hBrowser' ).
agentHasCondition( 'Bank Account.Hacker', 'Bank Account.Cost(1000)' ).
agentHasCondition( 'Bank Account.Hacker', 'Bank Account.Can Find 0days' ).
agentHasCondition( 'Bank Account.Hacker', 'Bank Account.PT Skill' ).

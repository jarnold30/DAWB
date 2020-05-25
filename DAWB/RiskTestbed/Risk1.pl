 
%!
% Risk model: Bank Account
% InputFile: 
% FileName: 
%
% Here is a list of containers in the model:
container( 'Bank Account.Web App' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.Port1' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.Customer UI' ).
interaction( 'Bank Account.Customer UI', 'Bank Account.cBrowser', 'http' ).
interaction( 'Bank Account.Customer UI', 'Bank Account.hBrowser', 'http' ).
containerHasPort( 'Bank Account.Web App', 'Bank Account.Auditor UI' ).
interaction( 'Bank Account.Auditor UI', 'Bank Account.Fat client', 'http' ).
interaction( 'Bank Account.Auditor UI', 'Bank Account.hBrowser', 'http' ).
container( 'Bank Account.DB Service' ).
containerHasPort( 'Bank Account.DB Service', 'Bank Account.DB' ).
interaction( 'Bank Account.DB', 'Bank Account.Port1', 'jdbc' ).
containerHasAssets( 'Bank Account.DB Service', 'Bank Account.Bank Accounts' ).

% Here is a list of assets in the model:
asset( 'Bank Account.Bank Accounts' ).
assetNumber( 'Bank Accounts', '1000000' ).

% Here is a list of threat agents in the model:
threatAgent( 'Bank Account.Customer' ).
agentHasPort( 'Bank Account.Customer', 'Bank Account.cBrowser' ).
threatAgent( 'Bank Account.ThreatAgent1' ).
agentHasPort( 'Bank Account.ThreatAgent1', 'Bank Account.Fat client' ).
agentHasCondition( 'Bank Account.ThreatAgent1', 'Bank Account.Auditor password' ).
threatAgent( 'Bank Account.Hacker' ).
agentHasPort( 'Bank Account.Hacker', 'Bank Account.hBrowser' ).

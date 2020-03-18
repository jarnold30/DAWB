%!
% Risk model: Web Banking
%
% Here is a list of containers in the model:
container( 'Web Banking.Banking Web Site' ).
containerType( 'Web Banking.Banking Web Site', 'Service' ).
containerHasPort( 'Web Banking.Banking Web Site', 'Web Banking.WS Client' ).
containerHasPort( 'Web Banking.Banking Web Site', 'Web Banking.Web UI' ).
interaction( 'Web Banking.Web UI', 'Web Banking.Web Browser2', 'http' ).
interaction( 'Web Banking.Web UI', 'Web Banking.Web Browser1', 'http' ).
container( 'Web Banking.Banking Service' ).
containerType( 'Web Banking.Banking Service', 'Service' ).
containerHasPort( 'Web Banking.Banking Service', 'Web Banking.WS Service' ).
interaction( 'Web Banking.WS Service', 'Web Banking.WS Client', 'WS' ).
containerHasAssets( 'Web Banking.Banking Service', 'Web Banking.Bank accounts' ).
container( 'Web Banking.Corporate Network' ).
containerType( 'Web Banking.Corporate Network', 'Network' ).
containerHasContainer( 'Web Banking.Corporate Network', 'Web Banking.Banking Service', 'TCP', '' ).
container( 'Web Banking.Web Site' ).
containerType( 'Web Banking.Web Site', 'Service' ).
containerHasSubclasses( 'Web Banking.Web Site', 'Web Banking.Banking Web Site' ).
container( 'Web Banking.Banking Service1' ).
containerType( 'Web Banking.Banking Service1', 'Service' ).
containerHasPort( 'Web Banking.Banking Service1', 'Web Banking.WS Service1' ).

% Here is a list of assets in the model:
asset( 'Web Banking.Bank accounts' ).
assetNumber( 'Bank accounts', '1000000' ).
assetSingleConfidentialityValue( 'Web Banking.Bank accounts', '1' ).
assetSingleIntegrityValue( 'Web Banking.Bank accounts', '4' ).
assetSingleAvailabilityValue( 'Web Banking.Bank accounts', '1' ).

% Here is a list of threat agents in the model:
threatAgent( 'Web Banking.Internet Hacker' ).
agentNumber( 'Web Banking.Internet Hacker', '10' ).
agentHasPort( 'Web Banking.Internet Hacker', 'Web Banking.Web Browser2' ).
threatAgent( 'Web Banking.Fred' ).
agentNumber( 'Web Banking.Fred', '1' ).
agentHasPort( 'Web Banking.Fred', 'Web Banking.Web Browser1' ).
agentHasCondition( 'Web Banking.Fred', 'Web Banking.password' ).

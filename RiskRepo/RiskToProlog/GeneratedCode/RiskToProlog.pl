%!
% Risk model: 
%
% Here is a list of containers in the model:
container( 'Banking Web Site' ).
containerType( 'Banking Web Site', 'Service' ).
containerHasPort( 'Banking Web Site', 'WS Client' ).
containerHasPort( 'Banking Web Site', 'Web UI' ).
interaction( 'Web UI', 'Web UI', 'http' ).
interaction( 'Web UI', 'Web UI', 'http' ).
container( 'Banking Service' ).
containerType( 'Banking Service', 'Service' ).
containerHasPort( 'Banking Service', 'WS Service' ).
interaction( 'WS Service', 'WS Service', 'WS' ).
containerHasAssets( 'Banking Service', 'Bank accounts' ).
container( 'Corporate Network' ).
containerType( 'Corporate Network', 'Network' ).
containerHasContainer( 'Corporate Network', 'Banking Service', 'TCP', '' ).
container( 'Web Site' ).
containerType( 'Web Site', 'Service' ).
containerHasSubclasses( 'Web Site', 'Banking Web Site' ).

% Here is a list of assets in the model:
asset( 'Bank accounts' ).
assetNumber( 'Bank accounts', '1000000' ).
assetSingleConfidentialityValue( 'Bank accounts', '1' ).
assetSingleIntegrityValue( 'Bank accounts', '4' ).
assetSingleAvailabilityValue( 'Bank accounts', '1' ).

% Here is a list of threat agents in the model:
threatAgent( 'Internet Hacker' ).
agentNumber( 'Internet Hacker', '10' ).
agentHasPort( 'Internet Hacker', 'Web Browser' ).
threatAgent( 'Fred' ).
agentNumber( 'Fred', '1' ).
agentHasPort( 'Fred', 'Web Browser' ).

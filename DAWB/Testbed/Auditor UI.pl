%%
%% Attack model: Auditor UI
%%
%% Here is a list of elements in the model:
start( 'Auditor UI.Start' ).
task( 'Auditor UI.Login' ).
taskHasPreConditions( 'Auditor UI.Login', 'Auditor UI.Auditor Password' ).
flow( 'Auditor UI.Start', 'Auditor UI.Login' ).
state( 'Auditor UI.Logged In' ).
stateHasPostConditions( 'Auditor UI.Logged In', 'Auditor UI.Auditor Access' ).
flow( 'Auditor UI.Login', 'Auditor UI.Logged In' ).
flow( 'Auditor UI.Buffer Overflow Attack', 'Auditor UI.Logged In' ).
task( 'Auditor UI.Buffer Overflow Attack' ).
flow( 'Auditor UI.Start', 'Auditor UI.Buffer Overflow Attack' ).

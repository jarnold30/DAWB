%%
%% Attack model: DB
%%
%% Here is a list of elements in the model:
start( 'DB.Start' ).
task( 'DB.App Login' ).
taskHasPreConditions( 'DB.App Login', 'DB.DB Password' ).
flow( 'DB.Start', 'DB.App Login' ).
state( 'DB.Logged In' ).
stateHasPostConditions( 'DB.Logged In', 'DB.*' ).
flow( 'DB.App Login', 'DB.Logged In' ).

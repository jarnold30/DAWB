%% 
%% Attack model: DB
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- discontiguous task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.

%% Here is a list of elements in the model:
start( 'DB', 'Start' ).
task( 'DB', 'App Login' ).
taskHasPreCondition( 'DB', 'App Login', 'DB Password' ).
flow( 'DB', 'Start', 'App Login' ).
state( 'DB', 'Logged In' ).
stateHasPostCondition( 'DB', 'Logged In', '*' ).
flow( 'DB', 'App Login', 'Logged In' ).

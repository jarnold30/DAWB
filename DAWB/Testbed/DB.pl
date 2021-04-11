%% 
%% Attack model: DB
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- multifile cond/2.
:- discontiguous task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- discontiguous cond/2.
%% Here is a list of elements in the model:
start( 'DB', 'Start' ).
task( 'DB', 'App Login' ).
cond('Common', '*') .
cond('DB', 'DB Password') .
%% taskHasPreCondition( 'DB', 'App Login', cond('DB', 'DB Password') ).
flow( 'DB', 'Start', 'App Login' ).
state( 'DB', 'Logged In' ).

%% stateHasPostCondition( 'DB', 'Logged In', cond('Common', '*') ).
flow( 'DB', 'App Login', 'Logged In' ).

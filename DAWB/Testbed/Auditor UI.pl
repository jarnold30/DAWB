%% 
%% Attack model: Auditor UI
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- multifile cond/2.
:- discontiguous task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- discontiguous cond/2.
%% Here is a list of elements in the model:
start( 'Auditor UI', 'Start' ).
task( 'Auditor UI', 'Login' ).
taskHasPreCondition( 'Auditor UI', 'Login', cond('Auditor UI', 'Auditor Password') ).
flow( 'Auditor UI', 'Start', 'Login' ).
state( 'Auditor UI', 'Logged In' ).
cond('Auditor UI', 'Auditor Access') .
stateHasPostCondition( 'Auditor UI', 'Logged In', cond('Auditor UI', 'Auditor Access') ).
flow( 'Auditor UI', 'Login', 'Logged In' ).
flow( 'Auditor UI', 'Buffer Overflow Attack', 'Logged In' ).
task( 'Auditor UI', 'Buffer Overflow Attack' ).
taskHasPreCondition( 'Auditor UI', 'Buffer Overflow Attack', cond('Common', 'PT Skill') ).
flow( 'Auditor UI', 'Start', 'Buffer Overflow Attack' ).

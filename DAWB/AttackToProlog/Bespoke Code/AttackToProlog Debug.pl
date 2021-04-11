%% 
%% Attack model: Customer UI
%%
%% declare some predicates as multifile and discontiguous to aboud warnings when loaded and allow use of multiple files
:- multifile task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- multifile cond/2.
:- discontiguous task/2, flow/3, taskHasPreCondition/3, stateHasPostCondition/3, state/2, end/2, start/2.
:- discontiguous cond/2.
%% Here is a list of elements in the model:
end( 'Customer UI', 'end' ).
flow( 'Customer UI', 'logout', 'end' ).
start( 'Customer UI', 'start' ).
task( 'Customer UI', 'register' ).
flow( 'Customer UI', 'start', 'register' ).
state( 'Customer UI', 'registered' ).
cond('Customer UI', 'password') .
stateHasPostCondition( 'Customer UI', 'registered', cond('Customer UI', 'password') ).
cond('Customer UI', 'UserID') .
stateHasPostCondition( 'Customer UI', 'registered', cond('Customer UI', 'UserID') ).
flow( 'Customer UI', 'register', 'registered' ).
task( 'Customer UI', 'login' ).
taskHasPreCondition( 'Customer UI', 'login', cond('Customer UI', 'password') ).
taskHasPreCondition( 'Customer UI', 'login', cond('Customer UI', 'UserID') ).
flow( 'Customer UI', 'registered', 'login' ).
state( 'Customer UI', 'logged in' ).
cond('Customer UI', 'Customer Access') .
stateHasPostCondition( 'Customer UI', 'logged in', cond('Customer UI', 'Customer Access') ).
flow( 'Customer UI', 'login', 'logged in' ).
task( 'Customer UI', 'logout' ).
flow( 'Customer UI', 'logged in', 'logout' ).
task( 'Customer UI', 'sql injection' ).
taskHasPreCondition( 'Customer UI', 'sql injection', cond('Common', 'PT Skill') ).
flow( 'Customer UI', 'start', 'sql injection' ).
state( 'Customer UI', 'complete control' ).
cond('Common', '*') .
stateHasPostCondition( 'Customer UI', 'complete control', cond('Common', '*') ).
flow( 'Customer UI', 'sql injection', 'complete control' ).

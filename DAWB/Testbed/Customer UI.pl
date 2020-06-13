%%
%% Attack model: CustomerUI
%%
%% Here is a list of elements in the model:
end( 'CustomerUI.end' ).
flow( 'CustomerUI.logout', 'CustomerUI.end' ).
start( 'CustomerUI.start' ).
task( 'CustomerUI.register' ).
flow( 'CustomerUI.start', 'CustomerUI.register' ).
state( 'CustomerUI.registered' ).
stateHasPostConditions( 'CustomerUI.registered', 'CustomerUI.password1' ).
stateHasPostConditions( 'CustomerUI.registered', 'CustomerUI.userID' ).
flow( 'CustomerUI.register', 'CustomerUI.registered' ).
task( 'CustomerUI.login' ).
taskHasPreConditions( 'CustomerUI.login', 'CustomerUI.password' ).
taskHasPreConditions( 'CustomerUI.login', 'CustomerUI.UserID' ).
flow( 'CustomerUI.registered', 'CustomerUI.login' ).
state( 'CustomerUI.logged in' ).
stateHasPostConditions( 'CustomerUI.logged in', 'CustomerUI.access to own account' ).
flow( 'CustomerUI.login', 'CustomerUI.logged in' ).
task( 'CustomerUI.logout' ).
flow( 'CustomerUI.logged in', 'CustomerUI.logout' ).
task( 'CustomerUI.sql injection' ).
taskHasPreConditions( 'CustomerUI.sql injection', 'CustomerUI.PT skill' ).
flow( 'CustomerUI.start', 'CustomerUI.sql injection' ).
state( 'CustomerUI.complete control' ).
stateHasPostConditions( 'CustomerUI.complete control', 'CustomerUI.RW access to all accounts' ).
flow( 'CustomerUI.sql injection', 'CustomerUI.complete control' ).

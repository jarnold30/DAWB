%!
% Attack model: http
%
% Here is a list of elements in the model:
task( 'http.login' ).
taskProbability( 'http.login', '.5' ).
taskConfidence10Percent( 'http.login', '.1' ).
taskConfidence90Percent( 'http.login', '.9' ).
taskHasPreConditions( 'http.login', 'http.Jim' ).
flow( 'http.Start', 'http.login' ).
start( 'http.Start' ).
end( 'http.End' ).
flow( 'http.logged in', 'http.End' ).
state( 'http.logged in' ).
flow( 'http.login', 'http.logged in' ).

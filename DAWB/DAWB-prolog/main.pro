% Copyright

implement main
    open core

clauses
    run() :-
        CP = commandLineParser::new(),
        CP:acceptEmpty := true,
        CP:addOption_help("-help"),
        % define command line options here
        if ErrorMessage = CP:parse():isSome() then
            stdio::write(ErrorMessage)
        else
            % place your own code here
        end if.

end implement main

goal
    console::runUtf8(main::run).

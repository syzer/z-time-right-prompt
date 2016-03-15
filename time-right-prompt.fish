# If a command has run for more then ten seconds, notify the user when
# it completes
# Put this somewhere in fish_prompt
function fish_right_prompt
    if test $CMD_DURATION -gt (math "1000 * 3")
        set secs (math "$CMD_DURATION / 1000")
        echo "$secs s"
    else
        echo ""
    end
end

function _pure_prompt_command_duration
    set --local command_duration

    # Get command execution duration
    if test -n "$CMD_DURATION"
        set command_duration (_pure_format_time $CMD_DURATION $pure_command_max_exec_time)
    end
    set --local command_duration_color "$pure_color_yellow"

    echo "$command_duration_color$command_duration"
end

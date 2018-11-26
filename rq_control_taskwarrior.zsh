#!/usr/bin/zsh

## TODO Update function names

# r create task
function rr() {
    local id="$1"
    task add "$id"
}

# i complete task
function ri() {
    local id="$1"
    task $id done
}

# rq read task
function ru() {
    local id="$1"
    task $id info
}


# ridq delete task
function rid() {
    local id="$1"
    task $id delete
}

# function rd() {
#     local id="$1"
#     task $id modify \\
# }

# irq Identify next
function rir() {
    # local id="$1"
    task next
}

alias rrr='task add +in'

# export PS1='$(task +in +PENDING count) '$PS1
#

function tickle () {
    deadline=$1
    shift
    ri +tickle wait:$deadline $@
}

alias tick=tickle
alias think='tickle +1d'

function tt() {
    nen=$($HOME/1q10iqi_states)
    oq=taskwarrior
    o1=python
    oeo=projects_without_next_action.sh
    projects=$($nen/oq_$oq/oq_$o1/$oeo)
    if [ "$projects" != "" ]
    then
        twt="Attention: The following projects don't currently have a next action:"
        # TODO Build assumptions re existence of colour printing utility
        print_colored_text RED $twt"\n"
        echo $projects
        echo
    fi
}

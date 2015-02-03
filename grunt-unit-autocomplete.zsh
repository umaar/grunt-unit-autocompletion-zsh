#!/usr/bin/env zsh

function $$grunt_unit_autocompletion() {
    compls=$(ls -1 test/assets/unit | sed 's/\.[^.]*$//' | sed 's/Test//' | sort)

    completions=(${=compls})
    compadd -- $completions
}

compdef $$grunt_unit_autocompletion grunt unit:

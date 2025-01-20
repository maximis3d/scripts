add_matching_quotes() {
    if [[ $READLINE_LINE ]]; then
        READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}\"\"${READLINE_LINE:$READLINE_POINT}"
        ((READLINE_POINT++))
    else
        READLINE_LINE="\"\""
        READLINE_POINT=1
    fi
}

bind -x '"\"": add_matching_quotes'

echo "Double-quote auto-matching enabled. Press '\"' to test."

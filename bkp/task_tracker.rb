def task_tracker(text)

    fail "No Tasks passed / text empty" if text.empty?

    if text.include?("#TODO")
        return true
    else
        return false
    end


end
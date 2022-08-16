def task_tracker(text)
    fail "No tasks/text empty" if text.empty? 
    array = text.split
    count_ToDo_Tasks =  array.count("#TODO")
   # binding.irb
    if array.count("#TODO") > 1
        return "lots of work today"
    elsif  array.any?("#TODO")
        return true
    else
    return false
    end

end
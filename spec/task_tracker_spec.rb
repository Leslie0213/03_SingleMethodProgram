require "task_tracker"

RSpec.describe "task_tracker method" do
    it "Fails if empty test / no tasks are sent"do

    expect{task_tracker("")}.to raise_error "No tasks/text empty"
    end

    context "when string is passed" do 
        it "Tasks / Text passed dosent contain #TODO"do
        result = task_tracker("Rex has lots of task for today")
        expect(result).to eq false
        end

        it "Tasks / Text passed contain #TODO"do
        result = task_tracker("Rex has lots of task #TODO for today")
        expect(result).to eq true
        end

        it "Tasks / Text passed contain #TODO"do
        result = task_tracker("Rex has many #TODO tasks #TODO for today")
        expect(result).to eq "lots of work today"
        end
    end
end
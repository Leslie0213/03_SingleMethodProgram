require "task_tracker"


RSpec.describe "task_tracker method" do
    it "Fails, When empty string is passed " do

        expect{task_tracker("")}.to raise_error "No Tasks passed / text empty"

    end

    context "When tasks / string is passed" do
     it " When tasks/text passed do not contain #TODO" do
            result =task_tracker("Rex has lots of tasks for today.") 

            expect(result).to eq false
    end

    it " When tasks/text passed contains #TODO string " do
            result =task_tracker("Rex has lots of tasks #TODO for today.") 

            expect(result).to eq true
    end

end


end
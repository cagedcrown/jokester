require "rails_helper"

describe Joke do
	describe "::new" do
		it "can be instantiated" do
			j = Joke.new
			expect(j.class).to eq(Joke)
		end
	end

	it { should validate_presence_of(:body)} 
	it { should belong_to(:user)}
	it { should have_many(:comments)}

end
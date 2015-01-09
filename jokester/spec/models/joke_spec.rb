require "rails_helper"

describe Joke do
	describe "::new" do
		it "can be instantiated" do
			j = Joke.new
			expect(j.class).to eq(Joke)
		end
	end
end
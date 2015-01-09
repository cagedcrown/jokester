require "rails_helper"

describe Comment do
	describe "::new" do
		it "can be instantiated" do
			c = Comment.new
			expect(c.class).to eq(Comment)
		end
	end
end
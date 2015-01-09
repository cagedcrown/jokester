require "rails_helper"

describe Comment do
	describe "::new" do
		it "can be instantiated" do
			c = Comment.new
			expect(c.class).to eq(Comment)
		end
	end

	it { should validate_presence_of(:body)} 

	it { should belong_to(:user)}
	it { should belong_to(:joke)}


end
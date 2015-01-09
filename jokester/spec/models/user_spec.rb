require 'rails_helper'


describe User do
	describe "::new" do
		it "can be instantiated" do
			u = User.new
			expect(u.class).to eq(User)
		end
	end

	it { should validate_presence_of(:name)} 
	it { should validate_presence_of(:email)} #email?
	it { should validate_presence_of(:encrypted_password)} #password?

	it { should have_many(:jokes)}
	it { should have_many(:comments)}

end

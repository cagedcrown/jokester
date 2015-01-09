require 'rails_helper'


describe User do
	describe "::new" do
		it "can be instantiated" do
			u = User.new
			expect(u.class).to eq(User)
		end
	end

	it { should validate_presence_of(:name)} 
	it { should validate_presence_of(:email)}
	it { should validate_presence_of(:encrypted_password)}
	it { should have_many(:jokes)}
	it { should have_many(:comments)}
	it { should validate_uniqueness_of(:email)}

	describe "#sign_in" do
		it "can sign in" do
			u = User.new(name:'string')
			expect(u.sign_in). to eq(true)
		end
	end

	describe "#sign_out" do
		it "can sign out" do

		end
	end

end

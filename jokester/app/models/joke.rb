class Joke < ActiveRecord::Base
	acts_as_votable

	belongs_to :user
	has_many :comments, dependent: :destroy

	validates :body, presence: true
end
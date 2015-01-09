class Comment < ActiveRecord::Base
	acts_as_votable

	validates :body, presence: true

	belongs_to :user
	belongs_to :joke
end
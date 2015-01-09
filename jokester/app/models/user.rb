class User < ActiveRecord::Base
	acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation

  has_many :jokes
  has_many :comments

  validates :name, presence: true
  validates :encrypted_password, presence: true
end

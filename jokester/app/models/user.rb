class User < ActiveRecord::Base
	#acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation


  has_many :jokes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :encrypted_password, presence: true
end

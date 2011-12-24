class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy

  attr_accessible :email, :password, :password_confirmation
end

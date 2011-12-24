class Category < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
end

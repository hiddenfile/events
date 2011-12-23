class Picture < ActiveRecord::Base
  belongs_to :category
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

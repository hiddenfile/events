class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :picture, :counter_cache => true
  validates :user_id, :uniqueness => {:scope => :picture_id}
end

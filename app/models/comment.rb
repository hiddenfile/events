class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :picture, :counter_cache => true
  default_scope order("created_at DESC")
  validates :message,:user_id,:picture_id, :presence => true
end

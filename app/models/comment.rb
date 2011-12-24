class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :picture, :counter_cache => true
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :best_pic

  def best_pic
    @best_picture ||= Picture.order("likes_count DESC").first.image(:medium)
  end
end

class PicturesController < ApplicationController
  before_filter :find_picture, :only => [:show, :like]

  def index
    @pictures = Picture.includes(:category).where("categories.title = ? ", params[:category_id]).paginate(:page => params[:page])
  end

  def all_pic
    @pictures = Picture.order("likes_count DESC").paginate(:page => params[:page])
  end

  def like
    like = @picture.likes.build(:user_id => current_user.id)
    flash[:error] = "Error" unless like.save
    redirect_to :back
  end

  private

  def find_picture
    @picture = Picture.find(params[:id])
  end

end

class CommentsController < ApplicationController
  def index
    @comments = Comment.includes([:picture,:user]).all
  end

  def create
    pic = Picture.find_by_id(params[:picture_id])
    current_user.comments.create(:picture => pic, :message => params[:comment][:message])
    redirect_to :back
  end


end

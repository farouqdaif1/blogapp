class LikesController < ApplicationController
  include ApplicationHelper

  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.new
    @like.post = @post
    @like.save
    @like.update_likes_counter
    redirect_to user_post_path(current_user.id, @post.id)
  end
end

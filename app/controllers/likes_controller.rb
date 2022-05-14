class LikesController < ApplicationController
  include ApplicationHelper

  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.new
    @like.post = @post
    if @like.save
      @like.update_likes_counter
      redirect_to user_post_path(current_user.id, @post.id), notice: 'You liked this post successfully'
    else
      redirect_to user_post_path(current_user.id, @post.id),
                  alert: 'An error occurred while creating the like'
    end
  end
end

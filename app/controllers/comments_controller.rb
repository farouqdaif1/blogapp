class CommentsController < ApplicationController
  include ApplicationHelper

  def new
    current_user
    @new_comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @new_comment = current_user.comments.new(comment_params)
    @new_comment.post = @post

    if @new_comment.save
      @new_comment.update_comments_counter
      redirect_to user_post_path(current_user.id, @post.id)
    else
      render :new, alert: 'An error occurred while creating the post'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end

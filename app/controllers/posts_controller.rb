class PostsController < ApplicationController
  include ApplicationHelper

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @likes = @post.likes
    @user_s = User.find(@post.author_id)
  end

  def new
    current_user
    @new_post = Post.new
  end

  def create
    @new_post = current_user.posts.new(post_params)
    if @new_post.save
      @new_post.update_posts_counter
      redirect_to user_path(@new_post.author_id), notice: 'You have successfully created a new post.'
    else
      render :new, alert: 'An error has occurred while creating the post'
    end
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :title, :text)
  end
end

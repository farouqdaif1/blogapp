class Post < ApplicationRecord
  include ApplicationHelper

  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def update_posts_counter
    current_user.increment!(:post_counter)
  end

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end

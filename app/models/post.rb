class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  after_save :update_post
  after_destroy :decrement_likes

  def update_post
    author.increment!(:posts_counter)
  end

  def decrement_likes
    author.decrement!(:posts_counter)
  end

  def five_recent_comments
    comments.order('created_at Desc').limit(5)
  end
end

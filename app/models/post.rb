class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  after_save :update_post
  after_destroy :decrement_likes

  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_post
    author.increment!(:posts_counter)
  end

  def decrement_likes
    author.decrement!(:posts_counter)
  end

  def five_recent_comments
    comments.order('created_at Desc').includes(:author).limit(5)
  end
end

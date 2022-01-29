class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_save :update_comments_counter

  validates :author_id, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :post_id, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end

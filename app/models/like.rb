class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :posts

  after_save :update_likes

  def update_likes
    post.increment!(:likes_counter)
  end
end

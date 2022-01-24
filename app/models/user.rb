class User < ApplicationRecord
 has_many :posts,foreign_key: 'author_id'
 has_many :likes,foreign_key: 'author_id'
 has_many :comments,foreign_key: 'author_id'


 def latest_posts

    return post.limit(3).order(created_at: :asc)
 end

end
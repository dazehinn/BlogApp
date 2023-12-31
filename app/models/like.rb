class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_create :update_likes_count

  def update_likes_count
    post.update_likes_counter
  end
end

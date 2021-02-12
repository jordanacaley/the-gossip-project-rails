class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  has_many :likes
  has_many :comments_on_comments, as: :imageable
end

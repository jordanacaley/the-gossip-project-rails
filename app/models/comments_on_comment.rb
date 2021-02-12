class CommentsOnComment < ApplicationRecord
  belongs_to :user
  has_many :likes
  belongs_to :imageable, polymorphic: true
end
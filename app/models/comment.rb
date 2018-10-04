class Comment < ApplicationRecord
  belongs_to :beginner
  validates :text, :author, :beginner, presence: true
end

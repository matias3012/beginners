class Comment < ApplicationRecord
  belongs_to :beginner, dependent: :destroy
  validates :text, :author, :beginner, presence: true
end

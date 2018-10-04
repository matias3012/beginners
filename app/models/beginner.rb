class Beginner < ApplicationRecord
  has_many :comments
  validates :title, :element, :author, presence: true
end

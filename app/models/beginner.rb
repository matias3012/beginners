class Beginner < ApplicationRecord
  validates :title, :element, :author, presence: true
end

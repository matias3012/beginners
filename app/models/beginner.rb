class Beginner < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, :element, :author, presence: true
end

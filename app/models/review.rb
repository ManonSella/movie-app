class Review < ApplicationRecord
  belongs_to :movie
  validates :username, presence:true
  validates :comment, length: { minimum: 20 }
end

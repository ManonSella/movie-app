class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
    validates :year, numericality: { greater_than: 1900 }
    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
    validates :description, length: { minimum: 20 }
    validates :theme, presence: true

    def has_enough_reviews?
        # return self.reviews.size >= 3
        reviews.size >= 3
    end
    # def average_score
    #     total = 0
    #     reviews.each do |review|
    #         total = total + review.rating
    #     end

    #     score = total / reviews.size
    #     score
    # end 
end

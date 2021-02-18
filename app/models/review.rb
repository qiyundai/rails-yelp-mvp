class Review < ApplicationRecord
    belongs_to :restaurant
    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new
    end

    validates :rating, numericality: { only_integer: true }
    validates_presence_of :content, :rating
    validates_inclusion_of :rating, in: (0..5).to_a
end

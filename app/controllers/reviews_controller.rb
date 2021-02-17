class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(strong_params)
    end

    def destroy
        @review = Review.find(:id)
    end

    private
    
    def strong_params
        params.require(:review).permit(:content, :rating)
    end
end
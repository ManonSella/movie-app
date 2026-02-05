class ReviewsController < ApplicationController

    before_action :target_movie

    def index
        @reviews = @movie.reviews
    end
    def new
        @review = @movie.reviews.new
    end
    def create
        
        @review = @movie.reviews.new(review_params)
        #l12 [:review] was replaced by "review_params" method
        if @review.save
            redirect_to movie_reviews_url(@movie), 
            notice: "Thank you for your review!"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def review_params
            params.require(:review).permit(:username, :comment)
        end

    def target_movie
        @movie = Movie.find(params[:movie_id])
    end
end

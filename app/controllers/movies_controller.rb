class MoviesController < ApplicationController
    def index
       @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update 
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            #flash[:notice] = "Event successfully updated!""
            redirect_to @movie, notice: "Event successfully updated!"
        else
            render :edit, status: :unprocessable_entity
        end
        # redirect_to movie_path(@movie)
    end

    def new
        @movie = Movie.new
    end

    def create
        # fail params[:movie]
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to @movie, notice: "Event successfully created!"
        else 
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path, { status: :see_other }
    end

private

    def movie_params
        params.require(:movie).permit(:name, :year, :description, :country, :theme, :picture_file_name)
    end

end

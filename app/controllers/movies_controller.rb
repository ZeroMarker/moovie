class MoviesController < ApplicationController
  def index
    @featured_movies = Movie.featured.order(release_year: :desc, title: :asc)
    @movies = Movie.order(release_year: :desc, title: :asc)
  end

  def show
    @movie = Movie.includes(:reviews).find_by!(slug: params[:id])
  end
end

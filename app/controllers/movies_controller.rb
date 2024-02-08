class MoviesController < ApplicationController
  def movies
    @movies = Movie.all

    render(template: "movie_templates/movies_index")
  end
end

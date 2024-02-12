class MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    

    render(template: "movie_templates/movies_index")
  end

  def dynamic_movies
    @movie_id = params.fetch("movie_id")
    @movie_info = Movie.where({:id => @movie_id}).at(0)

    @movie_title = @movie_info.title
    @movie_duration = @movie_info.duration
    @movie_description = @movie_info.description
    @movie_image = @movie_info.image
    @movie_year = @movie_info.year
    @movie_created_at = @movie_info.created_at
    @movie_updated_at = @movie_info.updated_at

    render(template: "movie_templates/movies_show")
  end
end

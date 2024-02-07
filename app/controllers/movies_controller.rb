class MoviesController < ApplicationController
  def directors
    @directors = Director.all

    render(template: "movie_templates/directors")
  end

  def movies
    @movies = Movie.all

    render(template: "movie_templates/movies")
  end

  def actors
    @actors = Actor.all

    render(template: "movie_templates/actors")
  end
end

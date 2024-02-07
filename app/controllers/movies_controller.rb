class MoviesController < ApplicationController
  def directors
    render(template: "movie_templates/directors")
  end

  def movies
    render(template: "movie_templates/movies")
  end

  def actors
    render(template: "movie_templates/actors")
  end
end

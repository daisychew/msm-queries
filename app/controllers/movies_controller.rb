class MoviesController < ApplicationController
  def movies
    @movies = Movie.all
    

    render(template: "movie_templates/movies_index")
  end

  def dynamic_movies
    @movie_id = params.fetch("movie_id")
    @actor_info = Actor.where({:id => @actor_id}).at(0)

    @actor_name = @actor_info.name
    @actor_dob = @actor_info.dob
    @actor_bio = @actor_info.bio
    @actor_image = @actor_info.image
    @actor_created_at = @actor_info.created_at
    @actor_updated_at = @actor_info.updated_at

    render(template: "actor_templates/actors_show")
  end
end

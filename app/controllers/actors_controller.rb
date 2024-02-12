class ActorsController < ApplicationController
  def actors
    @actors = Actor.all

    render(template: "actor_templates/actors_index")
  end
  
  def dynamic_actors
    @actor_id = params.fetch("actor_id")
    @actor_info = Actor.where({:id => @actor_id}).at(0)

    @actor_name = @actor_info.name
    @actor_dob = @actor_info.dob
    @actor_bio = @actor_info.bio
    @actor_image = @actor_info.image
    @actor_created_at = @actor_info.created_at
    @actor_updated_at = @actor_info.updated_at

    @characters_played = Character.where({:actor_id => @actor_id})
    @character_name = @characters_played.pluck(:name)
    @character_movie_id = @characters_played.pluck(:movie_id)

    @movie_info = Movie.where({:id => @character_movie_id}).at(0)
  
    @movie_title = @movie_info.title
    @movie_duration = @movie_info.duration
    @movie_description = @movie_info.description
    @movie_image = @movie_info.image
    @movie_year = @movie_info.year
    @movie_created_at = @movie_info.created_at
    @movie_updated_at = @movie_info.updated_at

    render(template: "actor_templates/actors_show")
  end
end

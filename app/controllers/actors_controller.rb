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
    

    render(template: "actor_templates/actors_show")
  end
end

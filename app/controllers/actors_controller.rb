class ActorsController < ApplicationController
  def index
    @actors = Actor.all

    render(template: "actor_templates/actors_index")
  end
  
  def show
    actor_id = params.fetch("actor_id")
    @actor = Actor.where({:id => actor_id}).at(0)

    @characters = Character.where({:actor_id => actor_id})

    render(template: "actor_templates/actors_show")
  end
end

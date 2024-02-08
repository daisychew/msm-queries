class ActorsController < ApplicationController
def dynamic_actors
  @actors = Actor.all

  @actors.each do |actor|
    @actor_id = actor['id']
  end

  render(template: "movie_templates/actors_id")
end

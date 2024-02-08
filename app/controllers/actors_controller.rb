class ActorsController < ApplicationController
  def actors
    @actors = Actor.all

    render(template: "movie_templates/actors")
  end
  
  def dynamic_actors
    @actors = Actor.all

    @actors.each do |actor|
      @actor_id = actor['id']
  end

  render(template: "movie_templates/actors_id")
end

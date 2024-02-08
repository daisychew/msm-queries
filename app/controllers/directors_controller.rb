class DirectorController < ApplicationController
  def directors
    @directors = Director.all

    render(template: "movie_templates/directors")
  end
  
  def dynamic_directors
    render(template: "actor_templates/directors_show.html.erb")
  end
end

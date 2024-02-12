class DirectorsController < ApplicationController
  def directors
    @directors = Director.all

    render(template: "director_templates/directors_index")
  end
  
  def dynamic_directors
    @directors_with_dob = Director.where.not(dob: nil)

    @director_id = params.fetch("director_id")
    @director_info = Director.where({:id => @director_id}).at(0)
    
    render(template: "director_templates/directors_show")
  end
end

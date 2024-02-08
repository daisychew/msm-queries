class DirectorsController < ApplicationController
  def directors
    @directors = Director.all

    render(template: "director_templates/directors_index")
  end
  
  def dynamic_directors
    @directors_with_dob = Director.where.not(dob: nil)
    
    render(template: "director_templates/directors_show")
  end
end

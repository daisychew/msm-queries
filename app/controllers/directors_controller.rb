class DirectorsController < ApplicationController
  def directors
    @directors = Director.all

    render(template: "director_templates/directors_index")
  end
  
  def dynamic_directors
    @director_id = params.fetch("director_id")
    @director_info = Director.where({:id => @director_id}).at(0)

    @movie_info = Movie.where({:director_id => @director_id})
    
    render(template: "director_templates/directors_show")
  end

  def youngest_director
    @directors_with_dob = Director.where.not(dob: nil)
    @youngest = @directors_with_dob.minimum(:dob)
    @youngest_name = Director.where({:dob => @youngest}).at(0).name
    @youngest_id = Director.where({:dob => @youngset}).at(0).id

    render(template: "director_templates/youngest_director")
  end

  def oldest_director
    @oldest = @directors_with_dob.maximum(:dob)
    @oldest_name = Director.where({:dob => @oldest}).at(0).name
    @oldest_id = Director.where({:dob => @oldset}).at(0).id

    render(template: "director_templates/youngest_director")
  end
end

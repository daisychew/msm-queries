Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", controller: "directors", action: "directors")

  get("/directors/youngest", controller: "directors", action: "youngest_director")

  get("/directors/eldest", controller: "directors", action: "eldest_director")

  get("/directors/:director_id", controller: "directors", action: "dynamic_directors")

  get("/movies", controller: "movies", action: "movies")

  get("/movies/:movie_id", controller: "movies", action: "dynamic_movies")

  get("/actors", controller: "actors", action: "index")

  get("/actors/:actor_id", controller: "actors", action: "show")
end

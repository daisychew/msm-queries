Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", controller: "movies", action: "directors")

  get("/movies", controller: "movies", action: "movies")

  get("/actors", controller: "movies", action: "actors")

  get("/actors/:actor_id", controller: "actors", action: "dynamic_actors")
end

Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", controller: "directors", action: "directors")

  get("/movies", controller: "movies", action: "movies")

  get("/actors", controller: "actors", action: "actors")

  get("/actors/:actor_id", controller: "actors", action: "dynamic_actors")
end

Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "eldest" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })


# dynamic routes

get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

get("/movies/:the_movie_id", { :controller => "movies", :action => "movie_details"})



end

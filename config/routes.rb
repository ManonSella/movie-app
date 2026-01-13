Rails.application.routes.draw do
  root "movies#index"
  get "events" => "events#index"
  get "events/1" => "events#index"

  resources :movies
  # get "movies" => "movies#index"
  # get "movies/new" => "movies#new"
  # get "movies/:id" => "movies#show", as: "movie"
  # get "movies/:id/edit" => "movies#edit", as: "edit_movie"
  # patch "movies/:id" => "movies#update"


  # this "=>" sign means we want to run the movies controller
  # "show" is the conventional action to run the details of the movies, or any other entity
 
end

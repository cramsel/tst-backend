Rails.application.routes.draw do
  get "/movies" => "movies#index"

  post "/movies" => "movies#create"
  post "/tickets" => "tickets#create"
end

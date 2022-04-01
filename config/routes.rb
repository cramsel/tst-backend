Rails.application.routes.draw do
  get "/movies" => "movies#index"

  post "/movies" => "movies#create"
  post "/tickets" => "tickets#create"
  post "/reports" => "reports#create"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#destroy"
end

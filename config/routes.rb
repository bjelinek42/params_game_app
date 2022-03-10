Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/name" => "names#what_is_your_name"

  # get "/segment_param/:food/:calories" => "names#segment"

  get "/segment_param/:city/:state/:county" => "names#segment"

  post "/guess_number" => "names#guess_number"
  get "/guess_number" => "names#guess_number"

  post "/login" => "names#validate_login"
  
end

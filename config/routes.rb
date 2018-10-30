Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    # get "/vintage_guitar_url" => "vintage_guitars#vintage_guitar_method"
    # get "/first_vintage_guitar_url" => "vintage_guitars#first_vintage_guitar_method"
    # get "/last_vintage_guitar_url" => "vintage_guitars#last_vintage_guitar_method"
    # get "/second_vintage_guitar_url" => "vintage_guitars#second_vintage_guitar_method"
    # get "/single_vintage_guitar_url" => "vintage_guitars#single_vintage_guitar_method"
    # get "/single_vintage_guitar_url/:id" => "vintage_guitars#single_vintage_guitar_method"
    get "/vintage_guitars" => "vintage_guitars#index"
    post "/vintage_guitars" => "vintage_guitars#create"
    get "/vintage_guitars/:id" => "vintage_guitars#show"
    patch "vintage_guitars/:id" => "vintage_guitars#update"
    delete "/vintage_guitars/:id" => "vintage_guitars#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
  end
end

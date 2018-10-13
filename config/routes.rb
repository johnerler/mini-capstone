Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/vintage_guitar_url" => "vintage_guitars#vintage_guitar_method"
    get "/first_vintage_guitar_url" => "vintage_guitars#first_vintage_guitar_method"
    get "/last_vintage_guitar_url" => "vintage_guitars#last_vintage_guitar_method"
    get "/second_vintage_guitar_url" => "vintage_guitars#second_vintage_guitar_method"
  end
end

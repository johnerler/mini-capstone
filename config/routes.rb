Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/vintage_guitar_url" => "vintage_guitars#vintage_guitar_method"
    get "/vintage_guitar_url" => "vintage_guitars#vintage_guitar_gibson_method"
  end
end

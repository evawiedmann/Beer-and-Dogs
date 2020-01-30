Rails.application.routes.draw do
  resources :breweries do
    resources :reviews
  end
end

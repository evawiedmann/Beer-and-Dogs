Rails.application.routes.draw do
  resources :breweries do
    resources :reviews
  end

  post 'authenticate', to: 'authentication#authenticate'
end

Rails.application.routes.draw do
  devise_for :users

  get 'home', to: 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :contents

  root to: "home#index"
end

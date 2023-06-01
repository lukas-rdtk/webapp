Rails.application.routes.draw do
  root 'fuel_consumptions#index'
  resources :fuel_consumptions, only: [:new, :create, :destroy]
end

Rails.application.routes.draw do
  root 'fuel_consumptions#index'
  resources :fuel_consumptions
end

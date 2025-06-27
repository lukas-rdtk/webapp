Rails.application.routes.draw do
  root 'fuel_consumptions#index'
  resources :fuel_consumptions do
    collection do
      get 'overview', to: 'fuel_consumptions#overview', as: 'overview'
    end
  end
end
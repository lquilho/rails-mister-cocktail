Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, except: [ :destroy, :update, :edit ] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # resources :ingredients
  # resources :doses
end

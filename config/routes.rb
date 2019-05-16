Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, except: [ :destroy, :update, :edit ]
  # resources :ingredients
  # resources :doses
end

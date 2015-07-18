Rails.application.routes.draw do
  resources :matches
  resources :teams
  resources :competitions
  root 'competitions#index'
end

Rails.application.routes.draw do
  resources :teams
  resources :competitions
  root 'welcome#index'
end

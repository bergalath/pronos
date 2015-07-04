Rails.application.routes.draw do
  resources :competitions
  root 'welcome#index'
end

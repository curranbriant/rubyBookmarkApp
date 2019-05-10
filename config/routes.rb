Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :bookmarks
  resources :comments
  root 'welcome#index'
end
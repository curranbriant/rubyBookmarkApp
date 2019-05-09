Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :bookmarks
 
  root 'welcome#index'
end
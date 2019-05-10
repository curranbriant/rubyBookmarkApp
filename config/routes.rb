Rails.application.routes.draw do
  get 'welcome/index'
  resources :bookmarks do
    resources :comments
  end
  resources :bookmarks
  resources :comments
  root 'welcome#index'
end
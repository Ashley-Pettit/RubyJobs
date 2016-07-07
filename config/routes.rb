Rails.application.routes.draw do

  devise_for :users
  resources :advertisments

  root 'welcome#index'

end

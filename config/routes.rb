Rails.application.routes.draw do

  devise_for :users
  resources :advertisments
  resources :company_profiles
  resources :developer_profiles
  resources :events
  resources :mailing_list


  root 'welcome#index'

end

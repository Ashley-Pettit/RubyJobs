Rails.application.routes.draw do

  devise_for :users
  resources :advertisments
  resources :company_profiles
  resources :developer_profiles
  resources :events
  resources :mailing_list

  get 'welcome/page_under_contruction' => 'welcome#page_under_contruction'

  root 'welcome#index'

end

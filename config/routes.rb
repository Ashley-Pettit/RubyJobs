Rails.application.routes.draw do
  root 'login#index'


  get '/login' => 'login#new'
  patch '/login' => 'login#update'
  get '/login/profile' => 'login#profile'
  
  get '/agenda/index' => 'agenda#index'
  get 'event_index' => 'eventquestions#index'
  get 'edit_profile' => 'login#edit'

end

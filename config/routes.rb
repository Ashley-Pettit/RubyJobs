Rails.application.routes.draw do
  root 'login#index'


  get '/login' => 'login#new'
  get '/login/incorrect' => 'login#login_incorrect'
  patch '/login' => 'login#update'
  get '/login/profile' => 'login#profile'
  get 'logout' => 'login#logout'

  get '/agenda/index' => 'agenda#index'
  get 'event_index' => 'questions#index'
  get 'edit_profile' => 'login#edit'

  get 'about' => 'about#index'

  get '/admin' => 'admin#index'
  patch '/event_new' => 'admin#new'

end

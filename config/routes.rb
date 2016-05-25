Rails.application.routes.draw do

  root 'login#index'

  get '/login' => 'login#new'
  get '/login/incorrect' => 'login#login_incorrect'
  patch '/login' => 'login#update'
  get '/login/profile' => 'login#profile'
  get 'logout' => 'login#logout'

  get '/agenda/index' => 'agenda#index'
  get '/question/index' => 'questions#index'
  get 'edit_profile' => 'login#edit'
  get '/event_new' => 'admin#new'

  get 'about' => 'about#index'

  get '/admin' => 'admin#index'
  patch '/event_new' => 'admin#create'
  get '/event/show/:id' => 'admin#show'
  patch '/event/edit/:id' => 'admin#edit'
  delete '/event/edit/:id' => 'admin#delete'
  get '/event/edit/:id' => 'admin#edit'

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'generals#index', as: 'index'
  get '/sign_up', to: 'accounts#sign_up', as: 'signup'
  get 'publication/:id/edit', to: 'accounts#update', as: 'editform'
  post 'publication/:id/edit', to: 'accounts#update', as: 'modifier'
  #post '/publication_edited/:id', to: 'accounts#update', as: 'editform'
  post '/sign_up_form', to: 'accounts#sign_up_form', as: 'signupform'
  post '/login', to: 'accounts#login', as: 'login'
  post '/publication', to: 'accounts#create_publication', as: 'pubcreate'
  post '/commentaire', to: 'accounts#comment', as: 'comment'
  get '/dashboard', to: 'accounts#dashboard', as: 'dashboard'
  delete '/logout', to: 'accounts#destroy', as: 'destroy'
  #patch '/edit/publication/', to: 'accounts#edit_pub', as: 'editpub'
  #post '/edit/publication/', to: 'accounts#update', as: 'editform'


  delete '/publication/:id', to: 'accounts#destroy_pub', as: 'destroypub'
end

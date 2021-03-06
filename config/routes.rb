Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :publications
  get '/', to: 'generals#index', as: 'index'
  get '/sign_up', to: 'accounts#sign_up', as: 'signup'
  #post '/publication/modify/:id', to: 'publications#edit'
  get '/publication/modify/:id', to: 'publications#edit', as: 'edit'
  post '/publication/modify/:id', to: 'publications#editform', as: 'editform'
  get 'publication/modify/:id', to: 'publications#update'
  post 'publication/modify/:id', to: 'publications#edit'
  get 'publication/modify/:id', to: 'publications#update'
  patch 'publication/modify/:id', to: 'publications#update', as: 'modifier'
  #post '/publication_edited/:id', to: 'accounts#update', as: 'editform'
  post '/sign_up_form', to: 'accounts#sign_up_form', as: 'signupform'
  post '/login', to: 'accounts#login', as: 'login'
  get '/publication', to: 'accounts#create_publication', as: "newpub"
  post '/publication', to: 'accounts#create_publication_form', as: 'pubcreate'
  post '/commentaire', to: 'accounts#comment', as: 'comment'
  get '/dashboard', to: 'accounts#dashboard', as: 'dashboard'
  delete '/logout', to: 'accounts#destroy', as: 'destroy'
  get 'publication/confirm', to: 'accounts#confirm', as: 'confirm'
  post 'publication/confirm', to: 'accounts#confirm', as: 'confirme'
  get  '*path', controller: 'application', action: 'render_404'
  post '*path', controller: 'application', action: 'render_404'
  get  '*path', controller: 'application', action: 'render_500'
  post '*path', controller: 'application', action: 'render_500'
  delete '/publication/:id', to: 'accounts#destroy_pub', as: 'destroypub'
end

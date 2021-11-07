Rails.application.routes.draw do
  resources :users
  resources :events
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'root#index'
  get 'user/index'
  get 'demo/index'
  get 'login/signing'
  get 'login/signup'

  # get ':controller(/:action(/:id)'
end

Rails.application.routes.draw do
  resources :categories, except: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #product resida en el home, en la raiz
  resources :products, path: '/'
  # get '/', to: redirect('/products')

  #users_new 
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end  
end
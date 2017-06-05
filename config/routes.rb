Rails.application.routes.draw do
  get 'mainpage/index'

  get 'mainpage/upload'

  get 'users/registeruser'

  get 'users/confirmuser'

  get 'users/index'

  get 'users/signin'

  get 'users/signup'

  root 'users#index'
  resources :mainpage do
    collection { post :upload }
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

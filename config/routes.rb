Rails.application.routes.draw do
  resources :posts
  root to: 'pages#home'

  devise_for :users
   resources :posts do 
   	resources :comments
   end
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

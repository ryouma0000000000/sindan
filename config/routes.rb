Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
   
  resources :perfumes do
    member do
      post 'save', to: 'perfumes#save_result', as: :save_perfume
      
      post 'save_result', to: 'perfumes#save_result'
      
      get 'save', to: 'perfumes#save_result'
    end
  end
  resources :user
  
  root 'user#index'
end

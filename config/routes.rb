Rails.application.routes.draw do
  root "static_pages#index" 
  resources :comments
  
  resources :favorites
  
  resources :courses do
    resources :pictures, :only =>[:create, :update]
  end
  
  devise_for :instructors 
  
  resources :instructors do
  resources :pictures, :only =>[:update]
  end

  devise_for :users

  resources :users do
    resources :pictures, :only =>[:update]
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
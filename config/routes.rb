Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:show, :index, :new, :create] do 
    resources :appointments
    resources :feedbacks, except: [:edit, :delete]
  end

  resources :sessions, only: [:new,:create,:destroy]
  
end

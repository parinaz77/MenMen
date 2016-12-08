Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:show, :index, :new] do 
    resources :appointments
    resources :feedbacks, except: [:edit, :delete]
  end
  
end

Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:show, :index, :new, :create] do 
    resources :appointments do
    	resources :feedbacks, except: [:edit, :delete]
	end
  end
  resources :calendars, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  
end

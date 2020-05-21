Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'citizens#register'
  get 'register', to: 'citizens#register'
  get 'signin', to: 'citizens#signin'
  post 'signin', to: 'citizens#authenticate'

  resources :citizens, only: [ :create, :edit, :update ] do
    resources :appointments, only: [ :create, :new ]
  end
  resources :clinics, except: [ :destroy, :index ]
end

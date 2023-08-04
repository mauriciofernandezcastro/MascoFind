Rails.application.routes.draw do
  resources :pets
  resources :traits
  resources :colaborators
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  get 'home/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end

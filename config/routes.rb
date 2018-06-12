Rails.application.routes.draw do
  get 'phone/show'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  resources :contacts do
    resources :phone
    member do
      patch :hidden_contact
    end
  end

  root 'contacts#index'
end

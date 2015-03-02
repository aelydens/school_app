Rails.application.routes.draw do
  root 'static_pages#index'
  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
  get 'sign-in', to: 'authentication#new'
  post 'sign-in', to: 'authentication#create'
  get 'sign-out', to: 'authentication#destroy'
  resources :courses do
    resources :lessons
  end
end

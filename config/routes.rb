Rails.application.routes.draw do
  root 'static_pages#index'
  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
  resources :classes do
    resources :lessons
  end
end

Rails.application.routes.draw do
  resources :cocktails, only: :index
  devise_for :users
  root 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

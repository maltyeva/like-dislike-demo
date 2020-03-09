Rails.application.routes.draw do
  root 'cocktails#index'
  devise_for :users

  resources :cocktails, only: :index do
    member do
      post 'toggle_favorite', to: "cocktails#toggle_favorite"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

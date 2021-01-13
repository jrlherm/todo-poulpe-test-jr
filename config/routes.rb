Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do
    member do
      patch :finished
      put :finished
    end
    resources :comments, only: [:create, :destroy]
  end
end

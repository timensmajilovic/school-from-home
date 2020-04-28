Rails.application.routes.draw do
  resources :nalogas
  devise_for :users
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"

end

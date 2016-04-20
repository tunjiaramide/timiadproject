Rails.application.routes.draw do
  devise_for :users
  resources :invites

  root "invites#index"
end

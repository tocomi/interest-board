Rails.application.routes.draw do
  devise_for :users
  root 'interests#index'

  resources :interests

  get 'interests/:id/favorite', to: 'interests#favorite', as: 'favorite_interest'
  post 'interests/:id/comment', to: 'interests#post_comment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

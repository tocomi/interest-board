Rails.application.routes.draw do
  resources :interests
  resources :users

  get 'interests/:id/favorite', to: 'interests#favorite', as: 'favorite_interest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

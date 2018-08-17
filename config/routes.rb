Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :large_groups
  resources :discussion_groups
  resources :cell_groups
  resources :members
  resources :member_dgs

  root 'home#index', as: 'home'

  get 'login', to: 'sessions#new', as: :login

  # custom routes
  get 'settings', to: 'user#settings', as: 'settings'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'venues', to: 'pages#venues', as: :venues
  get 'teams', to: 'pages#teams', as: :teams
  get 'teams/men', to: 'pages#men', as: :men
  get 'teams/ladies', to: 'pages#ladies', as: :ladies
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  get 'admin', to: 'pages#admin', as: :admin
  resources :articles
  resources :matches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

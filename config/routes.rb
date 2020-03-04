Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'venues', to: 'pages#venues', as: :venues
  get 'teams', to: 'pages#teams', as: :teams
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

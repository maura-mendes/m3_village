Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  get 'accommodation',       to: 'pages#accommodation', as: 'accommodation'
  get 'contact_us',       to: 'pages#contact_us', as: 'contact_us'
  get 'gallery',       to: 'pages#gallery', as: 'gallery'
  get 'rooms_list',       to: 'pages#rooms_list', as: 'rooms_list'
  get 'restaurant',       to: 'pages#restaurant', as: 'restaurant'

  # get 'pages/calculator'
  # get 'calculator' => 'pages#calculator'
  # post 'pages/calculator'

  match "calculator" => "pages#calculator", :via => [:post, :get]

  resources :rooms, only: [:index, :show]
  resources :contacts, only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  get 'pages/accommodation'
  # get 'pages/calculator'
  # get 'calculator' => 'pages#calculator'
  # post 'pages/calculator'

  match "calculator" => "pages#calculator", :via => [:post, :get]

  resources :rooms, only: [:index, :show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

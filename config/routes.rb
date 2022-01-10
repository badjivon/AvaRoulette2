Rails.application.routes.draw do
  root to: 'avas#index'
  resources :avas
  get "roulette", to: "avas#roulette"
  get "inventaire", to: "avas#inventaire"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

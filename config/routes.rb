Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spells, only: [:show]
  resources :creatures, only: [:show]
  resources :special_abilities, only: [:show]
  resources :actions, only: [:show]
  resources :legendary_actions, only: [:show]
end

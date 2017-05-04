Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spells, only: [:index, :show]
  resources :creatures, only: [:index, :show]
  resources :special_abilities, only: [:index, :show]
  resources :actions, only: [:index, :show]
  resources :legendary_actions, only: [:index, :show]
end

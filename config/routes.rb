Rails.application.routes.draw do
  resources :users do
    resources :bookmarks
  end 
  
  resources :pictures, only: [:index, :create, :show]
  resources :animate_mos, only: [:create]
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'places/index'
  get 'places/search'
  get 'plase/search'
  get 'cook/place'
  devise_for :users
  root to: "places#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cooks do
    collection do
      get 'search'
      post 'new'
    end
  

    resources :cooks, only: [:index,:new,:create]
    resources :maps 
    
  end
end

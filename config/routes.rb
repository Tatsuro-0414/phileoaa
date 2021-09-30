Rails.application.routes.draw do
  get 'places/index'
  get 'places/search'
  get 'plase/search'
  devise_for :users
  root to: "places#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cooks do
    collection do
      get 'search'
    end
  

    resources :places, only: [:index,:new,:create]
    resources :maps 
    
  end
end

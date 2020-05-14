Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: [:destroy, :index]

  resources :ingredients, only: %i[index show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

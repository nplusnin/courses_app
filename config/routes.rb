Rails.application.routes.draw do
  resources :courses, path: '/', shallow: true do
    resources :lessons, except: [:index]
    resources :invitation, only: [:index, :create, :destroy]
  end

  devise_for :users
end

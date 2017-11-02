Rails.application.routes.draw do
  resources :courses, path: '/', shallow: true do
    resources :lessons, except: [:index]
  end

  devise_for :users
end

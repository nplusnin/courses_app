Rails.application.routes.draw do
  devise_for :users

  resources :courses, path: '/', shallow: true do
    resources :lessons, except: [:index]
    resources :invitations, only: [:index, :create, :destroy], param: :user_id
  end

  root to: 'courses#index'
end

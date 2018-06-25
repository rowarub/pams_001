Rails.application.routes.draw do
  devise_for :managers
  resources :managers do
    member do
      get 'relations'
    end
  end

  devise_for :users
  devise_scope :user do
      root :to => "users/sessions#new"
  end


  resources :pams_answers, only: [:index, :show, :edit, :update]


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end

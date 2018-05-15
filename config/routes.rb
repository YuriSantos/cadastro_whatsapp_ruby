Rails.application.routes.draw do

  resources :solicitacao_bloqs
  resources :solicitacao_alts
  resources :solicitacao_exclusaos
  resources :cadastros
  resources :partes
  resource :cadastros
  root to: 'static_pages#index'

  # Using Devise for authentication
  devise_for :users,
    path_names: {
      sign_in: 'login', sign_out: 'logout',
      password: 'senha', confirmation: 'confirmar'
    },
    controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords'
    },
    skip: [:registrations]

  devise_scope :user do
    get "login", to: "users/sessions#new"
  end


  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :permissions, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :situations
end

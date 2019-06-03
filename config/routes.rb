Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get 'presearch', to: 'profiles#presearch', as: :presearch
  get 'profiles/search', to: 'profiles#search', as: :profile_search
  get 'myprofile', to: 'profiles#myprofile', as: :myprofile
  get 'profile/develop_hard', to: 'profiles#develop_hard', as: :develop_hard
  get 'profile/develop_soft', to: 'profiles#develop_soft', as: :develop_soft
  get 'profile/develop_key', to: 'profiles#develop_key', as: :develop_key
  get 'vacancies/search', to: 'vacancies#search', as: :vacancy_search

  resources :profiles, only: [:index, :show, :edit, :update]

  resources :vacancies, only: [:index, :show]

  resources :conversations, only: [:index, :create, :show] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end

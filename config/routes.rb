Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get 'presearch', to: 'profiles#presearch', as: :presearch
  get 'profiles/search', to: 'profiles#search', as: :profile_search
  patch 'myprofile', to: 'profiles#update', as: :myprofile_update
  get 'myprofile', to: 'profiles#myprofile', as: :myprofile
  get 'profile/develop_hard', to: 'profiles#develop_hard', as: :develop_hard
  get 'profile/develop_soft', to: 'profiles#develop_soft', as: :develop_soft
  get 'profile/develop_key', to: 'profiles#develop_key', as: :develop_key
  get 'vacancies/search', to: 'vacancies#search', as: :vacancy_search
  get 'myprofile/edit_user_skills', to: 'profiles#edit_user_skills', as: :edit_user_skills
  patch 'myprofile/update_user_skills', to: 'profiles#update_user_skills', as: :update_user_skills
  get 'myprofile/edit_develop_skills', to: 'profiles#edit_develop_skills', as: :edit_develop_skills
  patch 'myprofile/update_develop_skills', to: 'profiles#update_develop_skills', as: :update_develop_skills

  post 'message/update', to: 'messages#update_message'

  resources :profiles, only: [:index, :show, :edit, :update]

  resources :vacancies, only: [:index, :show]

  resources :conversations, only: [:index, :create, :show] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end

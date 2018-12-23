# frozen_string_literal: true

Rails.application.routes.draw do

  root :to => 'tops#index'


  resources :spots do
    collection do
      post :confirm
      post :edit_confirm
    end
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

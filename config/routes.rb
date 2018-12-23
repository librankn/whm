# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
  root 'spots#index'

  resources :spots do
    collection do
      post :confirm
      post :edit_confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

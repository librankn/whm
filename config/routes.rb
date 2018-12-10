# frozen_string_literal: true

Rails.application.routes.draw do
  resources :spots do
    collection do
      post :confirm
      post :edit_confirm
    end
  end
end

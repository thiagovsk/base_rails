# frozen_string_literal: true

Rails.application.routes.draw do
  resources :issues, only: [:index] do
    resources :events, only: [:index]
  end
  resources :events, only: [:create]
end

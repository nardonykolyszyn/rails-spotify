# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"
  namespace :spotify do
    get 'artists', to: 'artists#search'
    get 'playlists', to: 'playlists#search'
    get 'users', to: 'users#search'
    get 'categories', to: 'categories#search'
    get 'tracks', to: 'tracks#search'
    get 'albums', to: 'albums#search'
  end
end

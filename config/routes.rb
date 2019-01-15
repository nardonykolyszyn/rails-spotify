# frozen_string_literal: true 

Rails.application.routes.draw do
  namespace :spotify do
    get 'artists', to: 'artists#search'
    get 'playlists', to: 'playlists#search'
  end
end

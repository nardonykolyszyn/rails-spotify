# frozen_string_literal: true

module Spotify
  class CategoriesController < SpotifyController
    def search
      @categories = params[:name].present? ? Category.list : Category.find(params[:name])
      @categories = @categories.playlists if params[:playlists].present? && @categories.respond_to?(:playlists)
      render json: { categories: @categories }, status: :ok
    end
  end
end

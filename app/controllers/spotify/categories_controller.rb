# frozen_string_literal: true

module Spotify
  class CategoriesController < SpotifyController
    def search
      @categories = params[:name].present? ? Category.list : Category.find(params[:name])
      render json: { categories: @categories }, status: :ok
    end
  end
end

# frozen_string_literal: true

module Spotify
  class ArtistsController < SpotifyController
    def search
      @artists = params[:name].present? ? Artist.search(params[:name]) : { error: 'missing name param' }
      render json: { artists: @artists }, status: :ok
    end
  end
end

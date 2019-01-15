# frozen_string_literal: true

module Spotify
  class ArtistsController < SpotifyController
    def search
      artist_name = params[:name]
      if artist_name.present?
        @artist = Artist.search(artist_name)
      else
        @artist = { error: 'missing name param' }
      end
      render json: { artist: @artist }, status: :ok 
    end
  end
end

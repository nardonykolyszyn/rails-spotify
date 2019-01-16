# frozen_string_literal: true

module Spotify
  class AlbumsController < SpotifyController
    def search
      @albums = params[:name].present? ? Album.search(params[:name]) : { error: 'missing name param' }
      render json: { albums: @albums }, status: :ok
    end
  end
end

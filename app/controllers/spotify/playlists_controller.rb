# frozen_string_literal: true

module Spotify
  class PlaylistsController < SpotifyController
    def search
      @playlists = params[:name].present? ? Playlist.search(params[:name]) : { error: 'missing name param' }
      render json: { playlists: @playlists }, status: :ok
    end
  end
end

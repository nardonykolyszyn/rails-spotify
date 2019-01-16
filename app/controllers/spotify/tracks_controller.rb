# frozen_string_literal: true

module Spotify
  class TracksController < SpotifyController
    def search
      @tracks = params[:name].present? ? Track.search(params[:name]) : { error: 'missing name param' }
      render json: { tracks: @tracks }, status: :ok
    end
  end
end

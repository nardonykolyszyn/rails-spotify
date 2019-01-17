# frozen_string_literal: true

module Spotify
  class TracksController < SpotifyController
    include Searchable
  end
end

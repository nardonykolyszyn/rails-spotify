# frozen_string_literal: true

class SpotifyController < ApplicationController
  include RSpotify
  include Searchable
end

# frozen_string_literal: true

module Spotify
  class UsersController < SpotifyController
    def search
      @users = params[:name].present? ? User.find(params[:name]) : { error: 'missing name param' }
      render json: { users: @users }, status: :ok
    end
  end
end

# frozen_string_literal: true

module Searchable
  extend ActiveSupport::Concern

  def search
    param_name = params[:name]
    @collection = param_name.present? ? resource.search(param_name) : { error: 'missing name param' }
    render json: { "#{controller_name}": @collection }, status: :ok
  end

  def resource
    "RSpotify::#{controller_name.singularize.capitalize}".constantize
  end
end
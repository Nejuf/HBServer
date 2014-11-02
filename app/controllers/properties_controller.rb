class PropertiesController < ApplicationController

  def show
    prop = Property.where(coord: params[:coord]).first
    unless prop.present?
      # TODO build property from Google Places API if it doesn't exist
    end

    if prop.present?
      render json: { property: prop }
    else
      render json: { errors: ["Unable to find property"] }, status: 404
    end
  end

  def update
    prop = Property.find(params[:id])

    if prop.update(params)
      render json: { property: prop }
    else
      render json: { property: prop, errors: prop.errors }, status: :unprocessable_entity
    end
  end
end

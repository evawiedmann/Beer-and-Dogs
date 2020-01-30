class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all
    json_response(@breweries)
  end

  def show
    @brewery = Brewery.find(params[:id])
    json_response(@brewery)
  end

  def create
    @brewery = Brewery.create(brewery_params)
    json_response(@brewery)
  end

  def update
    @brewery = Brewery.find(params[:id])
    @brewery.update(brewery_params)
  end

  def destroy
    @brewery = Brewery.find(params[:id])
    @brewery.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def brewery_params
    params.permit(:city, :country)
  end
end

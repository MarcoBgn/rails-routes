class CandyController < ApplicationController
  def index
  end

  def show
    render candy_path(params[:id])
  end
end

class Api::V1::RapsController < ApplicationController

  def index
    raps = Rap.all
    render json: raps
  end

  def show
    render json: rap
  end

  def create
    rap = Rap.new(rap_params)

    if rap.save
      render json: rap, status: :created
    else
      render json: rap.errors, status: :unprocessable_entity
    end
  end

  def update
    if rap.update(rap_params)
      render json: rap
    else
      render json: rap.errors, status: :unprocessable_entity
    end
  end

  def destroy
    rap.destroy
  end

  private

  def set_rap
    rap ||=Rap.find(params[:id])
  end

  def rap_params
    params.require(:rap)
      .permit(:title, :body)
  end
end

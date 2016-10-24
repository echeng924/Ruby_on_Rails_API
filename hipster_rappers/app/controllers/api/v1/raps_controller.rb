class Api::V1::RapsController < ApplicationController
  before_action :set_rap, only: [:show, :update, :destroy]

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
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
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

class Api::V1::OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :update, :destroy]

  def index
    owners = Owner.all
    render json: owners
  end

  def show
    render json: owner
  end

  def create
    owner = Owner.new(owner_params)

    if owner.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def update
    if owner.update(owner_params)
      render json: owner
    else
      render json: owner.errors, status: :unprocessable_entity
    end
  end

  def destroy
    owner.destroy
  end

  private

  def set_owner
    owner ||=Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner)
      .permit(:name, :job, :tagline)
  end
end

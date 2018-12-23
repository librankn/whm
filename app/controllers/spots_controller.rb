# frozen_string_literal: true

class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to spots_path,notice:"ブログを作成しました"
    else
      render 'new'
    end
  end

  def new
    if params[:back]
      @spot = Spot.new(spot_params)
    else
      @spot = Spot.new
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path, notice:"ブログを削除しました！"
  end

  def edit

  end

  def confirm
    @spot = Spot.new(spot_params)
    render :new if @spot.invalid?
  end

  def edit_confirm
    @spot = Spot.find(params[:id])
    @spot.spot_name,@spot.spot_location = spot_params[:spot_name], spot_params[:spot_location]
  end

  def show

  end

  def update

    if @spot.update(spot_params)
      redirect_to spots_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:spot_name,:spot_location)
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end

end

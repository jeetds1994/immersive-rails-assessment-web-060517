class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new
    @guest.name = params[:guest][:name]
    @guest.occupation = params[:guest][:occupation]
    @guest.save
    redirect_to @guest
  end
end

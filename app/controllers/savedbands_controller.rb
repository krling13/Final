class SavedbandsController < ApplicationController
  def index
    @savedbands = Savedband.all
  end

  def show
    @savedband = Savedband.find(params[:id])
  end

  def new
    @savedband = Savedband.new
  end

  def create
    @savedband = Savedband.new
    @savedband.user_id = params[:user_id]
    @savedband.band_id = params[:band_id]

    if @savedband.save
      redirect_to :back, :notice => "Saved band successfully."
    else
      render 'new'
    end
  end

  def edit
    @savedband = Savedband.find(params[:id])
  end

  def update
    @savedband = Savedband.find(params[:id])

    @savedband.user_id = params[:user_id]
    @savedband.band_id = params[:band_id]

    if @savedband.save
      redirect_to "/savedbands", :notice => "Saved band updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @savedband = Savedband.find(params[:id])
    @savedband.destroy

    redirect_to :back, :notice => "Saved band deleted."
  end
end

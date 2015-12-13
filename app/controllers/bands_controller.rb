class BandsController < ApplicationController
  def my_savedbands
    @bands = current_user.savedband_bands
  end

  def my_timeline
    @bands = current_user.timeline_bands
  end

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.city = params[:city]
    @band.bio = params[:bio]
    @band.user_id = params[:user_id]

    if @band.save
      redirect_to "/bands", :notice => "Band created successfully."
    else
      render 'new'
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])

    @band.name = params[:name]
    @band.city = params[:city]
    @band.bio = params[:bio]
    @band.user_id = params[:user_id]

    if @band.save
      redirect_to "/bands/#{@band.id}", :notice => "Band updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    redirect_to "/bands", :notice => "Band deleted."
  end
end

class ConcertsController < ApplicationController
  def my_timeline
    @concerts = current_user.timeline_concerts
  end

  def index
    @concerts = current_user.concerts
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new
    @concert.user_id = current_user.id
    @concert.venue_id = params[:venue_id]
    @concert.band_id = params[:band_id]
    @concert.concertdate = params[:concertdate]

    if Venue.find_by_id(@concert.venue_id).user_id==current_user.id
    else
      @ven=Venue.new
      @ven.name = Venue.find_by_id(@concert.venue_id).name
      @ven.city = Venue.find_by_id(@concert.venue_id).city
      @ven.year = Venue.find_by_id(@concert.venue_id).year
      @ven.user_id = current_user.id
      @ven.save
  end

  if Band.find_by_id(@concert.band_id).user_id==current_user.id
    else
      @ban=Band.new
      @ban.name = Band.find_by_id(@concert.band_id).name
      @ban.city = Band.find_by_id(@concert.band_id).city
      @ban.bio = Band.find_by_id(@concert.band_id).bio
      @ban.user_id = current_user.id
      @ban.save
  end

    if @concert.save
      redirect_to "/concerts", :notice => "Concert created successfully."
    else
      render 'new'
    end
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    @concert.user_id = params[:user_id]
    @concert.venue_id = params[:venue_id]
    @concert.band_id = params[:band_id]
    @concert.concertdate = params[:concertdate]

    if Venue.find_by_id(@concert.venue_id).user_id==current_user.id
    else
      @ven=Venue.new
      @ven.name = Venue.find_by_id(@concert.venue_id).name
      @ven.city = Venue.find_by_id(@concert.venue_id).city
      @ven.year = Venue.find_by_id(@concert.venue_id).year
      @ven.user_id = current_user.id
      @ven.save
  end

  if Band.find_by_id(@concert.band_id).user_id==current_user.id
    else
      @ban=Band.new
      @ban.name = Band.find_by_id(@concert.band_id).name
      @ban.city = Band.find_by_id(@concert.band_id).city
      @ban.bio = Band.find_by_id(@concert.band_id).bio
      @ban.user_id = current_user.id
      @ban.save
  end

    if @concert.save
      redirect_to "/concerts", :notice => "Concert updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy

    redirect_to "/concerts", :notice => "Concert deleted."
  end
end

class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new({:title => params[:title], :copy => params[:copy], :price => params[:price]})

    if @advertisement.save
      flash[:notice] = "Advertisement was saved successfully."
      redirect_to @advertisement
    else
      flash.now[:error] = "There was an error saving the advertisement. Please try again."
      render :new
    end
  end
end

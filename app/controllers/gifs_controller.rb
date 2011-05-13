class GifsController < ApplicationController
  def create
    Gif.create(params[:gif])
    redirect_to '/'
  end

  def latest
    @gif = Gif.order('gifs.created_at DESC').first
    if @gif
      render :layout => false
    end
  end
end

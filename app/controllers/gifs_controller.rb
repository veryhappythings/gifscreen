class GifsController < ApplicationController
  def create
    Gif.create(params[:gif])
    redirect_to '/'
  end
end

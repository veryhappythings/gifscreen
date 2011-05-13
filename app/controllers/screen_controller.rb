class ScreenController < ApplicationController
  def index
    @gif = Gif.order('gifs.created_at DESC').first
    @new_gif = Gif.new
  end
end

class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @albums = []
    else
      @albums = Album.search params[:q]
    end
  end
end

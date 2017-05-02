class SearchController < ApplicationController
  def search
    @albums =
      if params[:q].nil?
        []
      else
        Album.search params[:q]
      end
  end
end
